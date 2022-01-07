
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vx_core {TYPE_2__* ops; TYPE_1__* hw; } ;
struct TYPE_4__ {int (* akm_write ) (struct vx_core*,int ,int) ;} ;
struct TYPE_3__ {unsigned int num_codecs; } ;


 int DAC_ATTEN_MAX ;
 int DAC_ATTEN_MIN ;
 int XX_CODEC_DAC_CONTROL_REGISTER ;
 int stub1 (struct vx_core*,int ,int) ;
 int vx_set_codec_reg (struct vx_core*,unsigned int,int ,int ) ;

void vx_toggle_dac_mute(struct vx_core *chip, int mute)
{
 unsigned int i;
 for (i = 0; i < chip->hw->num_codecs; i++) {
  if (chip->ops->akm_write)
   chip->ops->akm_write(chip, XX_CODEC_DAC_CONTROL_REGISTER, mute);
  else
   vx_set_codec_reg(chip, i, XX_CODEC_DAC_CONTROL_REGISTER,
      mute ? DAC_ATTEN_MAX : DAC_ATTEN_MIN);
 }
}
