
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int RT5631_CP_INTL_REG2 ;
 int RT5631_DEPOP_FUN_CTRL_2 ;
 unsigned int RT5631_EN_CAP_FREE_DEPOP ;
 int RT5631_EN_ONE_BIT_DEPOP ;
 int RT5631_INT_ST_IRQ_CTRL_2 ;
 int RT5631_SOFT_VOL_CTRL ;
 int RT5631_SPK_INTL_CTRL ;
 int RT5631_TEST_MODE_CTRL ;
 int msleep (int) ;
 int rt5631_write_index (struct snd_soc_component*,int ,int) ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,unsigned int) ;

__attribute__((used)) static void onebit_depop_power_stage(struct snd_soc_component *component, int enable)
{
 unsigned int soft_vol, hp_zc;


 snd_soc_component_update_bits(component, RT5631_DEPOP_FUN_CTRL_2,
    RT5631_EN_ONE_BIT_DEPOP, 0);


 soft_vol = snd_soc_component_read32(component, RT5631_SOFT_VOL_CTRL);
 snd_soc_component_write(component, RT5631_SOFT_VOL_CTRL, 0);
 hp_zc = snd_soc_component_read32(component, RT5631_INT_ST_IRQ_CTRL_2);
 snd_soc_component_write(component, RT5631_INT_ST_IRQ_CTRL_2, hp_zc & 0xf7ff);
 if (enable) {

  rt5631_write_index(component, RT5631_TEST_MODE_CTRL, 0x84c0);
  rt5631_write_index(component, RT5631_SPK_INTL_CTRL, 0x309f);
  rt5631_write_index(component, RT5631_CP_INTL_REG2, 0x6530);

  snd_soc_component_write(component, RT5631_DEPOP_FUN_CTRL_2,
    RT5631_EN_CAP_FREE_DEPOP);
 } else {

  snd_soc_component_write(component, RT5631_DEPOP_FUN_CTRL_2, 0);
  msleep(100);
 }


 snd_soc_component_write(component, RT5631_SOFT_VOL_CTRL, soft_vol);
 snd_soc_component_write(component, RT5631_INT_ST_IRQ_CTRL_2, hp_zc);
}
