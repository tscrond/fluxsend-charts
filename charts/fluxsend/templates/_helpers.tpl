{{/*
Common labels
*/}}
{{- define "fluxsend.labels" -}}
app.kubernetes.io/name: {{ .Values.appName }}
{{- with .Values.labels -}}
{{- toYaml . | nindent 0 -}}
{{- end }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "fluxsend.selectorLabels" -}}
{{ include "fluxsend.labels" . }}
{{- end }}
