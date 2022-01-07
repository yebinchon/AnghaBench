
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlv320dac33_priv {int work; int state; int fifo_mode; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int DAC33_FLUSH ;
 int DAC33_PREFILL ;
 int EINVAL ;






 int schedule_work (int *) ;
 struct tlv320dac33_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int dac33_pcm_trigger(struct snd_pcm_substream *substream, int cmd,
        struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct tlv320dac33_priv *dac33 = snd_soc_component_get_drvdata(component);
 int ret = 0;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  if (dac33->fifo_mode) {
   dac33->state = DAC33_PREFILL;
   schedule_work(&dac33->work);
  }
  break;
 case 129:
 case 128:
 case 133:
  if (dac33->fifo_mode) {
   dac33->state = DAC33_FLUSH;
   schedule_work(&dac33->work);
  }
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
