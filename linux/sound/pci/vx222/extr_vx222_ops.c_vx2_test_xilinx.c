
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vx_core {scalar_t__ type; TYPE_1__* card; } ;
struct snd_vx222 {int regCDSP; } ;
struct TYPE_2__ {int dev; } ;


 int CDSP ;
 int ENODEV ;
 int ISR ;
 int STATUS ;
 int VX_CDSP_TEST0_MASK ;
 int VX_CDSP_TEST1_MASK ;
 unsigned int VX_STATUS_VAL_TEST0_MASK ;
 unsigned int VX_STATUS_VAL_TEST1_MASK ;
 scalar_t__ VX_TYPE_BOARD ;
 int dev_dbg (int ,char*) ;
 struct snd_vx222* to_vx222 (struct vx_core*) ;
 unsigned int vx_inl (struct snd_vx222*,int ) ;
 int vx_outl (struct snd_vx222*,int ,int) ;

__attribute__((used)) static int vx2_test_xilinx(struct vx_core *_chip)
{
 struct snd_vx222 *chip = to_vx222(_chip);
 unsigned int data;

 dev_dbg(_chip->card->dev, "testing xilinx...\n");





 vx_outl(chip, CDSP, chip->regCDSP | VX_CDSP_TEST0_MASK);
 vx_inl(chip, ISR);
 data = vx_inl(chip, STATUS);
 if ((data & VX_STATUS_VAL_TEST0_MASK) == VX_STATUS_VAL_TEST0_MASK) {
  dev_dbg(_chip->card->dev, "bad!\n");
  return -ENODEV;
 }


 vx_outl(chip, CDSP, chip->regCDSP & ~VX_CDSP_TEST0_MASK);
 vx_inl(chip, ISR);
 data = vx_inl(chip, STATUS);
 if (! (data & VX_STATUS_VAL_TEST0_MASK)) {
  dev_dbg(_chip->card->dev, "bad! #2\n");
  return -ENODEV;
 }

 if (_chip->type == VX_TYPE_BOARD) {


  vx_outl(chip, CDSP, chip->regCDSP | VX_CDSP_TEST1_MASK);
  vx_inl(chip, ISR);
  data = vx_inl(chip, STATUS);
  if ((data & VX_STATUS_VAL_TEST1_MASK) == VX_STATUS_VAL_TEST1_MASK) {
   dev_dbg(_chip->card->dev, "bad! #3\n");
   return -ENODEV;
  }


  vx_outl(chip, CDSP, chip->regCDSP & ~VX_CDSP_TEST1_MASK);
  vx_inl(chip, ISR);
  data = vx_inl(chip, STATUS);
  if (! (data & VX_STATUS_VAL_TEST1_MASK)) {
   dev_dbg(_chip->card->dev, "bad! #4\n");
   return -ENODEV;
  }
 }
 dev_dbg(_chip->card->dev, "ok, xilinx fine.\n");
 return 0;
}
