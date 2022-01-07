
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int dev_err (int ,char*) ;
 int wm8974_reset (struct snd_soc_component*) ;

__attribute__((used)) static int wm8974_probe(struct snd_soc_component *component)
{
 int ret = 0;

 ret = wm8974_reset(component);
 if (ret < 0) {
  dev_err(component->dev, "Failed to issue reset\n");
  return ret;
 }

 return 0;
}
