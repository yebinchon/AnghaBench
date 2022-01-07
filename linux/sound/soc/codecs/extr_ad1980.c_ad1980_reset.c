
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct snd_ac97 {int dummy; } ;


 int AC97_AD_SERIAL_CFG ;
 int AD1980_VENDOR_ID ;
 int AD1980_VENDOR_MASK ;
 int EIO ;
 int dev_err (int ,char*) ;
 int snd_ac97_reset (struct snd_ac97*,int,int ,int ) ;
 struct snd_ac97* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int ad1980_reset(struct snd_soc_component *component, int try_warm)
{
 struct snd_ac97 *ac97 = snd_soc_component_get_drvdata(component);
 unsigned int retry_cnt = 0;
 int ret;

 do {
  ret = snd_ac97_reset(ac97, 1, AD1980_VENDOR_ID,
   AD1980_VENDOR_MASK);
  if (ret >= 0)
   return 0;







  snd_soc_component_write(component, AC97_AD_SERIAL_CFG, 0x9900);

 } while (retry_cnt++ < 10);

 dev_err(component->dev, "Failed to reset: AC97 link error\n");

 return -EIO;
}
