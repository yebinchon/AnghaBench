
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
 int vx2_load_xilinx_binary (struct vx_core*,struct firmware const*) ;
 int vx2_test_xilinx (struct vx_core*) ;

__attribute__((used)) static int vx2_load_dsp(struct vx_core *vx, int index, const struct firmware *dsp)
{
 int err;

 switch (index) {
 case 1:

  if ((err = vx2_load_xilinx_binary(vx, dsp)) < 0)
   return err;
  if ((err = vx2_test_xilinx(vx)) < 0)
   return err;
  return 0;
 case 2:

  return snd_vx_dsp_boot(vx, dsp);
 case 3:

  return snd_vx_dsp_load(vx, dsp);
 default:
  snd_BUG();
  return -EINVAL;
 }
}
