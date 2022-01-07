
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct cs42l56_private {int * beep; int beep_work; } ;


 int CS42L56_BEEP_EN_MASK ;
 int CS42L56_BEEP_TONE_CFG ;
 int cancel_work_sync (int *) ;
 int dev_attr_beep ;
 int device_remove_file (int ,int *) ;
 struct cs42l56_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static void cs42l56_free_beep(struct snd_soc_component *component)
{
 struct cs42l56_private *cs42l56 = snd_soc_component_get_drvdata(component);

 device_remove_file(component->dev, &dev_attr_beep);
 cancel_work_sync(&cs42l56->beep_work);
 cs42l56->beep = ((void*)0);

 snd_soc_component_update_bits(component, CS42L56_BEEP_TONE_CFG,
       CS42L56_BEEP_EN_MASK, 0);
}
