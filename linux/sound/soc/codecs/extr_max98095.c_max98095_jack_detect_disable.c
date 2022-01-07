
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int M98095_089_JACK_DET_AUTO ;
 int dev_err (int ,char*,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int max98095_jack_detect_disable(struct snd_soc_component *component)
{
 int ret = 0;


 ret = snd_soc_component_write(component, M98095_089_JACK_DET_AUTO, 0x0);
 if (ret < 0) {
  dev_err(component->dev, "Failed to cfg auto detect %d\n", ret);
  return ret;
 }

 return ret;
}
