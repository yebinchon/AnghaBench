
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int MUTE_LEFT ;
 int MUTE_RIGHT ;
 int PM860X_DAC_OFFSET ;
 int PM860X_EAR_CTRL_2 ;
 int RSYNC_CHANGE ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int pm860x_digital_mute(struct snd_soc_dai *codec_dai, int mute)
{
 struct snd_soc_component *component = codec_dai->component;
 int data = 0, mask = MUTE_LEFT | MUTE_RIGHT;

 if (mute)
  data = mask;
 snd_soc_component_update_bits(component, PM860X_DAC_OFFSET, mask, data);
 snd_soc_component_update_bits(component, PM860X_EAR_CTRL_2,
       RSYNC_CHANGE, RSYNC_CHANGE);
 return 0;
}
