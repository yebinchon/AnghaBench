
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;
struct firmware {int dummy; } ;


 int EINVAL ;
 int snd_BUG () ;
 int snd_vx_dsp_boot (struct vx_core*,struct firmware const*) ;
 int snd_vx_dsp_load (struct vx_core*,struct firmware const*) ;
 int snd_vx_load_boot_image (struct vx_core*,struct firmware const*) ;
 int vx_check_magic (struct vx_core*) ;
 int vxp_load_xilinx_binary (struct vx_core*,struct firmware const*) ;

__attribute__((used)) static int vxp_load_dsp(struct vx_core *vx, int index, const struct firmware *fw)
{
 int err;

 switch (index) {
 case 0:

  if ((err = vx_check_magic(vx)) < 0)
   return err;
  if ((err = snd_vx_load_boot_image(vx, fw)) < 0)
   return err;
  return 0;
 case 1:

  return vxp_load_xilinx_binary(vx, fw);
 case 2:

  return snd_vx_dsp_boot(vx, fw);
 case 3:

  return snd_vx_dsp_load(vx, fw);
 default:
  snd_BUG();
  return -EINVAL;
 }
}
