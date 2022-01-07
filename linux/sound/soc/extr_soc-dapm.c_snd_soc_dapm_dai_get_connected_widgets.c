
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct snd_soc_dapm_widget_list {int dummy; } ;
struct snd_soc_dapm_widget {int dummy; } ;
struct snd_soc_dai {struct snd_soc_dapm_widget* capture_widget; struct snd_soc_dapm_widget* playback_widget; TYPE_1__* component; } ;
struct snd_soc_card {int dapm_mutex; } ;
struct TYPE_8__ {int next; } ;
struct TYPE_7__ {struct snd_soc_card* card; } ;


 int LIST_HEAD (TYPE_2__) ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int SND_SOC_DAPM_CLASS_RUNTIME ;
 int SND_SOC_DAPM_DIR_IN ;
 int SND_SOC_DAPM_DIR_OUT ;
 int dapm_widget_list_create (struct snd_soc_dapm_widget_list**,TYPE_2__*) ;
 int invalidate_paths_ep (struct snd_soc_dapm_widget*,int ) ;
 int is_connected_input_ep (struct snd_soc_dapm_widget*,TYPE_2__*,int (*) (struct snd_soc_dapm_widget*,int)) ;
 int is_connected_output_ep (struct snd_soc_dapm_widget*,TYPE_2__*,int (*) (struct snd_soc_dapm_widget*,int)) ;
 int list_del (int ) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int trace_snd_soc_dapm_connected (int,int) ;
 TYPE_2__ widgets ;

int snd_soc_dapm_dai_get_connected_widgets(struct snd_soc_dai *dai, int stream,
 struct snd_soc_dapm_widget_list **list,
 bool (*custom_stop_condition)(struct snd_soc_dapm_widget *,
          enum snd_soc_dapm_direction))
{
 struct snd_soc_card *card = dai->component->card;
 struct snd_soc_dapm_widget *w;
 LIST_HEAD(widgets);
 int paths;
 int ret;

 mutex_lock_nested(&card->dapm_mutex, SND_SOC_DAPM_CLASS_RUNTIME);

 if (stream == SNDRV_PCM_STREAM_PLAYBACK) {
  w = dai->playback_widget;
  invalidate_paths_ep(w, SND_SOC_DAPM_DIR_OUT);
  paths = is_connected_output_ep(w, &widgets,
    custom_stop_condition);
 } else {
  w = dai->capture_widget;
  invalidate_paths_ep(w, SND_SOC_DAPM_DIR_IN);
  paths = is_connected_input_ep(w, &widgets,
    custom_stop_condition);
 }


 list_del(widgets.next);

 ret = dapm_widget_list_create(list, &widgets);
 if (ret)
  paths = ret;

 trace_snd_soc_dapm_connected(paths, stream);
 mutex_unlock(&card->dapm_mutex);

 return paths;
}
