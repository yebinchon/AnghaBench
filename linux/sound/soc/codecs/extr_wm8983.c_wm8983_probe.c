
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int ARRAY_SIZE (int*) ;
 int WM8983_BIASCUT ;
 int WM8983_BIAS_CTRL ;
 int WM8983_DAC_CONTROL ;
 int WM8983_LOUT1_HP_VOLUME_CTRL ;
 int WM8983_OUT4_MONO_MIX_CTRL ;
 int WM8983_SOFTMUTE ;
 int WM8983_SOFTMUTE_MASK ;
 int WM8983_SOFTWARE_RESET ;
 int dev_err (int ,char*,int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;
 int* vol_update_regs ;

__attribute__((used)) static int wm8983_probe(struct snd_soc_component *component)
{
 int ret;
 int i;

 ret = snd_soc_component_write(component, WM8983_SOFTWARE_RESET, 0);
 if (ret < 0) {
  dev_err(component->dev, "Failed to issue reset: %d\n", ret);
  return ret;
 }


 for (i = 0; i < ARRAY_SIZE(vol_update_regs); ++i)
  snd_soc_component_update_bits(component, vol_update_regs[i],
        0x100, 0x100);


 for (i = WM8983_LOUT1_HP_VOLUME_CTRL;
      i <= WM8983_OUT4_MONO_MIX_CTRL; ++i)
  snd_soc_component_update_bits(component, i, 0x40, 0x40);


 snd_soc_component_update_bits(component, WM8983_DAC_CONTROL,
       WM8983_SOFTMUTE_MASK,
       WM8983_SOFTMUTE);


 snd_soc_component_update_bits(component, WM8983_BIAS_CTRL,
       WM8983_BIASCUT, WM8983_BIASCUT);
 return 0;
}
