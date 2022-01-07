
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {scalar_t__ id; int active; unsigned int is_ep; } ;
struct snd_soc_dai {struct snd_soc_dapm_widget* capture_widget; struct snd_soc_dapm_widget* playback_widget; } ;


 int SNDRV_PCM_STREAM_PLAYBACK ;
 unsigned int SND_SOC_DAPM_EP_SINK ;
 unsigned int SND_SOC_DAPM_EP_SOURCE ;






 int dapm_mark_dirty (struct snd_soc_dapm_widget*,char*) ;
 int dapm_widget_invalidate_input_paths (struct snd_soc_dapm_widget*) ;
 int dapm_widget_invalidate_output_paths (struct snd_soc_dapm_widget*) ;
 scalar_t__ snd_soc_dapm_dai_in ;

__attribute__((used)) static void soc_dapm_dai_stream_event(struct snd_soc_dai *dai, int stream,
 int event)
{
 struct snd_soc_dapm_widget *w;
 unsigned int ep;

 if (stream == SNDRV_PCM_STREAM_PLAYBACK)
  w = dai->playback_widget;
 else
  w = dai->capture_widget;

 if (w) {
  dapm_mark_dirty(w, "stream event");

  if (w->id == snd_soc_dapm_dai_in) {
   ep = SND_SOC_DAPM_EP_SOURCE;
   dapm_widget_invalidate_input_paths(w);
  } else {
   ep = SND_SOC_DAPM_EP_SINK;
   dapm_widget_invalidate_output_paths(w);
  }

  switch (event) {
  case 130:
   w->active = 1;
   w->is_ep = ep;
   break;
  case 129:
   w->active = 0;
   w->is_ep = 0;
   break;
  case 128:
  case 131:
  case 133:
  case 132:
   break;
  }
 }
}
