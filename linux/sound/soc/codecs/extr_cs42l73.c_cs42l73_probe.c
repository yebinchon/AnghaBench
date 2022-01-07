
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {int chgfreq; } ;
struct cs42l73_private {scalar_t__ mclk; int mclksel; TYPE_1__ pdata; } ;


 int CS42L73_CHARGEPUMP_MASK ;
 int CS42L73_CLKID_MCLK1 ;
 int CS42L73_CPFCHC ;
 struct cs42l73_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int cs42l73_probe(struct snd_soc_component *component)
{
 struct cs42l73_private *cs42l73 = snd_soc_component_get_drvdata(component);


 if (cs42l73->pdata.chgfreq)
  snd_soc_component_update_bits(component, CS42L73_CPFCHC,
        CS42L73_CHARGEPUMP_MASK,
     cs42l73->pdata.chgfreq << 4);


 cs42l73->mclksel = CS42L73_CLKID_MCLK1;
 cs42l73->mclk = 0;

 return 0;
}
