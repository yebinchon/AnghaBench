
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct lx6464es {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EAGAIN ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,scalar_t__) ;
 int ePLX_PCICR ;
 int eReg_CSM ;
 scalar_t__ lx_dsp_reg_read (struct lx6464es*,int ) ;
 int lx_dsp_reg_write (struct lx6464es*,int ,int ) ;
 int lx_plx_reg_write (struct lx6464es*,int ,int) ;

__attribute__((used)) static int lx_init_xilinx_test(struct lx6464es *chip)
{
 u32 reg;

 dev_dbg(chip->card->dev, "->lx_init_xilinx_test\n");


 lx_dsp_reg_write(chip, eReg_CSM, 0);

 reg = lx_dsp_reg_read(chip, eReg_CSM);

 if (reg) {
  dev_err(chip->card->dev, "Problem: Reg_CSM %x.\n", reg);


  lx_plx_reg_write(chip, ePLX_PCICR, 1);

  reg = lx_dsp_reg_read(chip, eReg_CSM);
  if (reg) {
   dev_err(chip->card->dev, "Error: Reg_CSM %x.\n", reg);
   return -EAGAIN;
  }
 }

 dev_dbg(chip->card->dev, "Xilinx/MicroBlaze access test successful\n");

 return 0;
}
