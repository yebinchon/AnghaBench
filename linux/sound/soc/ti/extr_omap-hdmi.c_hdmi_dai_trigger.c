
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct hdmi_audio_data {int dssdev; TYPE_1__* ops; struct snd_pcm_substream* current_stream; } ;
struct TYPE_2__ {int (* audio_start ) (int ) ;int (* audio_stop ) (int ) ;} ;


 int EINVAL ;






 int WARN_ON (int) ;
 struct hdmi_audio_data* card_drvdata_substream (struct snd_pcm_substream*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static int hdmi_dai_trigger(struct snd_pcm_substream *substream, int cmd,
       struct snd_soc_dai *dai)
{
 struct hdmi_audio_data *ad = card_drvdata_substream(substream);
 int err = 0;

 WARN_ON(ad->current_stream != substream);

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  err = ad->ops->audio_start(ad->dssdev);
  break;
 case 129:
 case 128:
 case 133:
  ad->ops->audio_stop(ad->dssdev);
  break;
 default:
  err = -EINVAL;
 }
 return err;
}
