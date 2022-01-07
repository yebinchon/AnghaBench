
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lx_rmh {scalar_t__ dsp_stat; int stat_len; int stat; int cmd_len; int cmd; } ;
struct lx6464es {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EAGAIN ;
 int EBUSY ;


 int ERROR_VALUE ;
 int ETIMEDOUT ;
 int REG_CRM_NUMBER ;
 int Reg_CSM_MC ;
 int Reg_CSM_MR ;
 int XILINX_TIMEOUT_MS ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int eReg_CRM1 ;
 int eReg_CRM2 ;
 int eReg_CSM ;
 int lx_dsp_reg_read (struct lx6464es*,int ) ;
 int lx_dsp_reg_readbuf (struct lx6464es*,int ,int ,int) ;
 int lx_dsp_reg_write (struct lx6464es*,int ,int) ;
 int lx_dsp_reg_writebuf (struct lx6464es*,int ,int ,int ) ;
 int lx_message_dump (struct lx_rmh*) ;
 int snd_BUG_ON (int) ;
 int udelay (int) ;

__attribute__((used)) static int lx_message_send_atomic(struct lx6464es *chip, struct lx_rmh *rmh)
{
 u32 reg = 128;
 int dwloop;

 if (lx_dsp_reg_read(chip, eReg_CSM) & (Reg_CSM_MC | Reg_CSM_MR)) {
  dev_err(chip->card->dev, "PIOSendMessage eReg_CSM %x\n", reg);
  return -EBUSY;
 }


 lx_dsp_reg_writebuf(chip, eReg_CRM1, rmh->cmd, rmh->cmd_len);


 lx_dsp_reg_write(chip, eReg_CSM, Reg_CSM_MC);


 for (dwloop = 0; dwloop != XILINX_TIMEOUT_MS * 1000; ++dwloop) {
  if (lx_dsp_reg_read(chip, eReg_CSM) & Reg_CSM_MR) {
   if (rmh->dsp_stat == 0)
    reg = lx_dsp_reg_read(chip, eReg_CRM1);
   else
    reg = 0;
   goto polling_successful;
  } else
   udelay(1);
 }
 dev_warn(chip->card->dev, "TIMEOUT lx_message_send_atomic! "
     "polling failed\n");

polling_successful:
 if ((reg & ERROR_VALUE) == 0) {

  if (rmh->stat_len) {
   snd_BUG_ON(rmh->stat_len >= (REG_CRM_NUMBER-1));
   lx_dsp_reg_readbuf(chip, eReg_CRM2, rmh->stat,
        rmh->stat_len);
  }
 } else
  dev_err(chip->card->dev, "rmh error: %08x\n", reg);


 lx_dsp_reg_write(chip, eReg_CSM, 0);

 switch (reg) {
 case 128:
  dev_warn(chip->card->dev, "lx_message_send: dsp timeout\n");
  return -ETIMEDOUT;

 case 129:
  dev_warn(chip->card->dev, "lx_message_send: dsp crashed\n");
  return -EAGAIN;
 }

 lx_message_dump(rmh);

 return reg;
}
