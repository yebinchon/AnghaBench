
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int chip_status; } ;
struct firmware {int dummy; } ;


 int VX_STAT_DEVICE_INIT ;
 int msleep (int) ;
 int snd_vx_load_boot_image (struct vx_core*,struct firmware const*) ;
 int vx_reset_board (struct vx_core*,int) ;
 int vx_validate_irq (struct vx_core*,int ) ;

int snd_vx_dsp_boot(struct vx_core *chip, const struct firmware *boot)
{
 int err;
 int cold_reset = !(chip->chip_status & VX_STAT_DEVICE_INIT);

 vx_reset_board(chip, cold_reset);
 vx_validate_irq(chip, 0);

 if ((err = snd_vx_load_boot_image(chip, boot)) < 0)
  return err;
 msleep(10);

 return 0;
}
