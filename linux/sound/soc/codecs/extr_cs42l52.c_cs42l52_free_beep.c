
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct cs42l52_private {int * beep; int beep_work; } ;


 int CS42L52_BEEP_EN_MASK ;
 int CS42L52_BEEP_TONE_CTL ;
 int cancel_work_sync (int *) ;
 int dev_attr_beep ;
 int device_remove_file (int ,int *) ;
 struct cs42l52_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static void cs42l52_free_beep(struct snd_soc_component *component)
{
 struct cs42l52_private *cs42l52 = snd_soc_component_get_drvdata(component);

 device_remove_file(component->dev, &dev_attr_beep);
 cancel_work_sync(&cs42l52->beep_work);
 cs42l52->beep = ((void*)0);

 snd_soc_component_update_bits(component, CS42L52_BEEP_TONE_CTL,
       CS42L52_BEEP_EN_MASK, 0);
}
