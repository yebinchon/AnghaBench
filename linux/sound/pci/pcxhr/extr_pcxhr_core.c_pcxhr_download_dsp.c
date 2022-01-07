
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcxhr_mgr {TYPE_1__* pci; } ;
struct firmware {int size; unsigned char* data; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int PCXHR_DSP_ISR ;
 int PCXHR_DSP_TXH ;
 int PCXHR_DSP_TXL ;
 int PCXHR_DSP_TXM ;
 int PCXHR_ISR_HI08_TRDY ;
 int PCXHR_OUTPB (struct pcxhr_mgr*,int ,unsigned char const) ;
 int PCXHR_TIMEOUT_DSP ;
 int PCXHR_WAIT_DEFAULT ;
 int cond_resched () ;
 int dev_err (int *,char*,unsigned int) ;
 int msleep (int ) ;
 int pcxhr_check_reg_bit (struct pcxhr_mgr*,int ,int ,int ,int ,unsigned char*) ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static int pcxhr_download_dsp(struct pcxhr_mgr *mgr, const struct firmware *dsp)
{
 int err;
 unsigned int i;
 unsigned int len;
 const unsigned char *data;
 unsigned char dummy;

 if (dsp->size <= 0)
  return -EINVAL;
 if (dsp->size % 3)
  return -EINVAL;
 if (snd_BUG_ON(!dsp->data))
  return -EINVAL;

 for (i = 0; i < dsp->size; i += 3) {
  data = dsp->data + i;
  if (i == 0) {

   len = (unsigned int)((data[0]<<16) +
          (data[1]<<8) +
          data[2]);
   if (len && (dsp->size != (len + 2) * 3))
    return -EINVAL;
  }

  err = pcxhr_check_reg_bit(mgr, PCXHR_DSP_ISR,
       PCXHR_ISR_HI08_TRDY,
       PCXHR_ISR_HI08_TRDY,
       PCXHR_TIMEOUT_DSP, &dummy);
  if (err) {
   dev_err(&mgr->pci->dev,
       "dsp loading error at position %d\n", i);
   return err;
  }

  PCXHR_OUTPB(mgr, PCXHR_DSP_TXH, data[0]);
  PCXHR_OUTPB(mgr, PCXHR_DSP_TXM, data[1]);
  PCXHR_OUTPB(mgr, PCXHR_DSP_TXL, data[2]);


  cond_resched();
 }

 msleep(PCXHR_WAIT_DEFAULT);
 return 0;
}
