
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pcxhr_rmh {int cmd_len; int* cmd; size_t cmd_idx; } ;
struct pcxhr_mgr {TYPE_1__* pci; } ;
struct TYPE_2__ {int dev; } ;


 size_t CMD_LAST_INDEX ;
 int EINVAL ;
 int EIO ;
 int PCXHR_DSP_ISR ;
 int PCXHR_DSP_TXH ;
 int PCXHR_DSP_TXL ;
 int PCXHR_DSP_TXM ;
 int PCXHR_INPB (struct pcxhr_mgr*,int ) ;
 int PCXHR_ISR_HI08_CHK ;
 unsigned char PCXHR_ISR_HI08_ERR ;
 int PCXHR_ISR_HI08_RXDF ;
 int PCXHR_ISR_HI08_TRDY ;
 int PCXHR_IT_MESSAGE ;
 int PCXHR_IT_RESET_CHK ;
 int PCXHR_IT_RESET_SEMAPHORE ;
 int PCXHR_OUTPB (struct pcxhr_mgr*,int ,int) ;
 int PCXHR_SIZE_MAX_CMD ;
 int PCXHR_TIMEOUT_DSP ;
 int* cmd_names ;
 int dev_dbg (int *,char*,int,int) ;
 int dev_err (int *,char*,...) ;
 int pcxhr_check_reg_bit (struct pcxhr_mgr*,int ,int ,int ,int ,unsigned char*) ;
 int pcxhr_read_rmh_status (struct pcxhr_mgr*,struct pcxhr_rmh*) ;
 int pcxhr_send_it_dsp (struct pcxhr_mgr*,int ,int) ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static int pcxhr_send_msg_nolock(struct pcxhr_mgr *mgr, struct pcxhr_rmh *rmh)
{
 int err;
 int i;
 u32 data;
 unsigned char reg;

 if (snd_BUG_ON(rmh->cmd_len >= PCXHR_SIZE_MAX_CMD))
  return -EINVAL;
 err = pcxhr_send_it_dsp(mgr, PCXHR_IT_MESSAGE, 1);
 if (err) {
  dev_err(&mgr->pci->dev,
   "pcxhr_send_message : ED_DSP_CRASHED\n");
  return err;
 }

 err = pcxhr_check_reg_bit(mgr, PCXHR_DSP_ISR, PCXHR_ISR_HI08_CHK,
      PCXHR_ISR_HI08_CHK, PCXHR_TIMEOUT_DSP, &reg);
 if (err)
  return err;

 err = pcxhr_send_it_dsp(mgr, PCXHR_IT_RESET_CHK, 1);
 if (err)
  return err;

 err = pcxhr_check_reg_bit(mgr, PCXHR_DSP_ISR, PCXHR_ISR_HI08_CHK, 0,
      PCXHR_TIMEOUT_DSP, &reg);
 if (err)
  return err;

 data = rmh->cmd[0];

 if (rmh->cmd_len > 1)
  data |= 0x008000;
 else
  data &= 0xff7fff;






 err = pcxhr_check_reg_bit(mgr, PCXHR_DSP_ISR, PCXHR_ISR_HI08_TRDY,
      PCXHR_ISR_HI08_TRDY, PCXHR_TIMEOUT_DSP, &reg);
 if (err)
  return err;
 PCXHR_OUTPB(mgr, PCXHR_DSP_TXH, (data>>16)&0xFF);
 PCXHR_OUTPB(mgr, PCXHR_DSP_TXM, (data>>8)&0xFF);
 PCXHR_OUTPB(mgr, PCXHR_DSP_TXL, (data&0xFF));

 if (rmh->cmd_len > 1) {

  data = rmh->cmd_len - 1;
  err = pcxhr_check_reg_bit(mgr, PCXHR_DSP_ISR,
       PCXHR_ISR_HI08_TRDY,
       PCXHR_ISR_HI08_TRDY,
       PCXHR_TIMEOUT_DSP, &reg);
  if (err)
   return err;
  PCXHR_OUTPB(mgr, PCXHR_DSP_TXH, (data>>16)&0xFF);
  PCXHR_OUTPB(mgr, PCXHR_DSP_TXM, (data>>8)&0xFF);
  PCXHR_OUTPB(mgr, PCXHR_DSP_TXL, (data&0xFF));

  for (i=1; i < rmh->cmd_len; i++) {

   data = rmh->cmd[i];





   err = pcxhr_check_reg_bit(mgr, PCXHR_DSP_ISR,
        PCXHR_ISR_HI08_TRDY,
        PCXHR_ISR_HI08_TRDY,
        PCXHR_TIMEOUT_DSP, &reg);
   if (err)
    return err;
   PCXHR_OUTPB(mgr, PCXHR_DSP_TXH, (data>>16)&0xFF);
   PCXHR_OUTPB(mgr, PCXHR_DSP_TXM, (data>>8)&0xFF);
   PCXHR_OUTPB(mgr, PCXHR_DSP_TXL, (data&0xFF));
  }
 }

 err = pcxhr_check_reg_bit(mgr, PCXHR_DSP_ISR, PCXHR_ISR_HI08_CHK,
      PCXHR_ISR_HI08_CHK, PCXHR_TIMEOUT_DSP, &reg);
 if (err)
  return err;

 if (reg & PCXHR_ISR_HI08_ERR) {

  err = pcxhr_check_reg_bit(mgr, PCXHR_DSP_ISR,
       PCXHR_ISR_HI08_RXDF,
       PCXHR_ISR_HI08_RXDF,
       PCXHR_TIMEOUT_DSP, &reg);
  if (err) {
   dev_err(&mgr->pci->dev,
    "ERROR RMH: ISR:RXDF=1 (ISR = %x)\n", reg);
   return err;
  }

  data = PCXHR_INPB(mgr, PCXHR_DSP_TXH) << 16;
  data |= PCXHR_INPB(mgr, PCXHR_DSP_TXM) << 8;
  data |= PCXHR_INPB(mgr, PCXHR_DSP_TXL);
  dev_err(&mgr->pci->dev, "ERROR RMH(%d): 0x%x\n",
      rmh->cmd_idx, data);
  err = -EINVAL;
 } else {

  err = pcxhr_read_rmh_status(mgr, rmh);
 }

 if (pcxhr_send_it_dsp(mgr, PCXHR_IT_RESET_SEMAPHORE, 1) < 0)
  return -EIO;
 return err;
}
