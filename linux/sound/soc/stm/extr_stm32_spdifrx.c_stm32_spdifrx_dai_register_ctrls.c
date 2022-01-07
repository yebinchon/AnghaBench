
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;


 int ARRAY_SIZE (int ) ;
 int snd_soc_add_component_controls (int ,int ,int ) ;
 int snd_soc_add_dai_controls (struct snd_soc_dai*,int ,int ) ;
 int stm32_spdifrx_ctrls ;
 int stm32_spdifrx_iec_ctrls ;

__attribute__((used)) static int stm32_spdifrx_dai_register_ctrls(struct snd_soc_dai *cpu_dai)
{
 int ret;

 ret = snd_soc_add_dai_controls(cpu_dai, stm32_spdifrx_iec_ctrls,
           ARRAY_SIZE(stm32_spdifrx_iec_ctrls));
 if (ret < 0)
  return ret;

 return snd_soc_add_component_controls(cpu_dai->component,
           stm32_spdifrx_ctrls,
           ARRAY_SIZE(stm32_spdifrx_ctrls));
}
