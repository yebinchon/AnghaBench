
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct hdmi_audio_data {int current_stream_lock; struct snd_pcm_substream* current_stream; int dssdev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* audio_shutdown ) (int ) ;} ;


 int WARN_ON (int) ;
 struct hdmi_audio_data* card_drvdata_substream (struct snd_pcm_substream*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void hdmi_dai_shutdown(struct snd_pcm_substream *substream,
         struct snd_soc_dai *dai)
{
 struct hdmi_audio_data *ad = card_drvdata_substream(substream);

 WARN_ON(ad->current_stream != substream);

 ad->ops->audio_shutdown(ad->dssdev);

 mutex_lock(&ad->current_stream_lock);
 ad->current_stream = ((void*)0);
 mutex_unlock(&ad->current_stream_lock);
}
