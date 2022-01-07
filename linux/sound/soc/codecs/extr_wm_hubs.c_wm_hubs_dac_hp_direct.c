
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int WM8993_DACL_TO_HPOUT1L ;
 int WM8993_DACL_TO_MIXOUTL ;
 int WM8993_DACR_TO_HPOUT1R ;
 int WM8993_DACR_TO_MIXOUTR ;
 int WM8993_OUTPUT_MIXER1 ;
 int WM8993_OUTPUT_MIXER2 ;
 int dev_vdbg (int ,char*,...) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;

__attribute__((used)) static bool wm_hubs_dac_hp_direct(struct snd_soc_component *component)
{
 int reg;


 reg = snd_soc_component_read32(component, WM8993_OUTPUT_MIXER1);
 if (!(reg & WM8993_DACL_TO_HPOUT1L)) {
  if (reg & ~WM8993_DACL_TO_MIXOUTL) {
   dev_vdbg(component->dev, "Analogue paths connected: %x\n",
     reg & ~WM8993_DACL_TO_HPOUT1L);
   return 0;
  } else {
   dev_vdbg(component->dev, "HPL connected to mixer\n");
  }
 } else {
  dev_vdbg(component->dev, "HPL connected to DAC\n");
 }

 reg = snd_soc_component_read32(component, WM8993_OUTPUT_MIXER2);
 if (!(reg & WM8993_DACR_TO_HPOUT1R)) {
  if (reg & ~WM8993_DACR_TO_MIXOUTR) {
   dev_vdbg(component->dev, "Analogue paths connected: %x\n",
     reg & ~WM8993_DACR_TO_HPOUT1R);
   return 0;
  } else {
   dev_vdbg(component->dev, "HPR connected to mixer\n");
  }
 } else {
  dev_vdbg(component->dev, "HPR connected to DAC\n");
 }

 return 1;
}
