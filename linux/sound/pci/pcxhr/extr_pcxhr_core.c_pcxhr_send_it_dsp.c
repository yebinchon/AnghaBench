
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcxhr_mgr {TYPE_1__* pci; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int PCXHR_CVR_HI08_HC ;
 int PCXHR_DSP_CVR ;
 int PCXHR_DSP_ICR ;
 unsigned char PCXHR_ICR_HI08_HDRQ ;
 unsigned char PCXHR_ICR_HI08_HF0 ;
 unsigned char PCXHR_ICR_HI08_HF1 ;
 unsigned char PCXHR_ICR_HI08_RREQ ;
 unsigned char PCXHR_ICR_HI08_TREQ ;
 unsigned int PCXHR_INPL (struct pcxhr_mgr*,int ) ;
 unsigned int PCXHR_MASK_EXTRA_INFO ;
 unsigned int PCXHR_MASK_IT_HF0 ;
 unsigned int PCXHR_MASK_IT_HF1 ;
 unsigned int PCXHR_MASK_IT_MANAGE_HF5 ;
 unsigned int PCXHR_MASK_IT_NO_HF0_HF1 ;
 unsigned int PCXHR_MASK_IT_WAIT ;
 unsigned int PCXHR_MASK_IT_WAIT_EXTRA ;
 unsigned int PCXHR_MBOX0_HF5 ;
 int PCXHR_OUTPB (struct pcxhr_mgr*,int ,unsigned char) ;
 int PCXHR_OUTPL (struct pcxhr_mgr*,int ,unsigned int) ;
 int PCXHR_PLX_MBOX0 ;
 int PCXHR_TIMEOUT_DSP ;
 int PCXHR_WAIT_IT ;
 int PCXHR_WAIT_IT_EXTRA ;
 int dev_err (int *,char*) ;
 int mdelay (int ) ;
 int msleep (int ) ;
 int pcxhr_check_reg_bit (struct pcxhr_mgr*,int ,unsigned int,unsigned int,int ,unsigned char*) ;

__attribute__((used)) static int pcxhr_send_it_dsp(struct pcxhr_mgr *mgr,
        unsigned int itdsp, int atomic)
{
 int err;
 unsigned char reg;

 if (itdsp & PCXHR_MASK_IT_MANAGE_HF5) {

  PCXHR_OUTPL(mgr, PCXHR_PLX_MBOX0,
       PCXHR_INPL(mgr, PCXHR_PLX_MBOX0) &
       ~PCXHR_MBOX0_HF5);
 }
 if ((itdsp & PCXHR_MASK_IT_NO_HF0_HF1) == 0) {
  reg = (PCXHR_ICR_HI08_RREQ |
         PCXHR_ICR_HI08_TREQ |
         PCXHR_ICR_HI08_HDRQ);
  if (itdsp & PCXHR_MASK_IT_HF0)
   reg |= PCXHR_ICR_HI08_HF0;
  if (itdsp & PCXHR_MASK_IT_HF1)
   reg |= PCXHR_ICR_HI08_HF1;
  PCXHR_OUTPB(mgr, PCXHR_DSP_ICR, reg);
 }
 reg = (unsigned char)(((itdsp & PCXHR_MASK_EXTRA_INFO) >> 1) |
         PCXHR_CVR_HI08_HC);
 PCXHR_OUTPB(mgr, PCXHR_DSP_CVR, reg);
 if (itdsp & PCXHR_MASK_IT_WAIT) {
  if (atomic)
   mdelay(PCXHR_WAIT_IT);
  else
   msleep(PCXHR_WAIT_IT);
 }
 if (itdsp & PCXHR_MASK_IT_WAIT_EXTRA) {
  if (atomic)
   mdelay(PCXHR_WAIT_IT_EXTRA);
  else
   msleep(PCXHR_WAIT_IT);
 }

 err = pcxhr_check_reg_bit(mgr, PCXHR_DSP_CVR, PCXHR_CVR_HI08_HC, 0,
      PCXHR_TIMEOUT_DSP, &reg);
 if (err) {
  dev_err(&mgr->pci->dev, "pcxhr_send_it_dsp : TIMEOUT CVR\n");
  return err;
 }
 if (itdsp & PCXHR_MASK_IT_MANAGE_HF5) {

  err = pcxhr_check_reg_bit(mgr, PCXHR_PLX_MBOX0,
       PCXHR_MBOX0_HF5,
       PCXHR_MBOX0_HF5,
       PCXHR_TIMEOUT_DSP,
       &reg);
  if (err) {
   dev_err(&mgr->pci->dev,
       "pcxhr_send_it_dsp : TIMEOUT HF5\n");
   return err;
  }
 }
 return 0;
}
