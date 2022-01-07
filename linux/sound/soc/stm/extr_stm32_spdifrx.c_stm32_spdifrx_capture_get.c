
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stm32_spdifrx_data {int * cs; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_soc_dai* snd_kcontrol_chip (struct snd_kcontrol*) ;
 struct stm32_spdifrx_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int stm32_spdifrx_get_ctrl_data (struct stm32_spdifrx_data*) ;

__attribute__((used)) static int stm32_spdifrx_capture_get(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_dai *cpu_dai = snd_kcontrol_chip(kcontrol);
 struct stm32_spdifrx_data *spdifrx = snd_soc_dai_get_drvdata(cpu_dai);

 stm32_spdifrx_get_ctrl_data(spdifrx);

 ucontrol->value.iec958.status[0] = spdifrx->cs[0];
 ucontrol->value.iec958.status[1] = spdifrx->cs[1];
 ucontrol->value.iec958.status[2] = spdifrx->cs[2];
 ucontrol->value.iec958.status[3] = spdifrx->cs[3];
 ucontrol->value.iec958.status[4] = spdifrx->cs[4];

 return 0;
}
