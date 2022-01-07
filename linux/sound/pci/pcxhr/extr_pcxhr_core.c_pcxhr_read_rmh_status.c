
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pcxhr_rmh {int stat_len; scalar_t__ dsp_stat; scalar_t__ cmd_idx; int* stat; } ;
struct pcxhr_mgr {TYPE_1__* pci; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ CMD_LAST_INDEX ;
 int PCXHR_DSP_ISR ;
 int PCXHR_DSP_TXH ;
 int PCXHR_DSP_TXL ;
 int PCXHR_DSP_TXM ;
 int PCXHR_INPB (struct pcxhr_mgr*,int ) ;
 int PCXHR_ISR_HI08_RXDF ;
 int PCXHR_SIZE_MAX_STATUS ;
 int PCXHR_TIMEOUT_DSP ;
 scalar_t__ RMH_SSIZE_ARG ;
 scalar_t__ RMH_SSIZE_FIXED ;
 int dev_dbg (int *,char*,int,...) ;
 int dev_err (int *,char*,unsigned char,int) ;
 int pcxhr_check_reg_bit (struct pcxhr_mgr*,int ,int ,int ,int ,unsigned char*) ;

__attribute__((used)) static int pcxhr_read_rmh_status(struct pcxhr_mgr *mgr, struct pcxhr_rmh *rmh)
{
 int err;
 int i;
 u32 data;
 u32 size_mask;
 unsigned char reg;
 int max_stat_len;

 if (rmh->stat_len < PCXHR_SIZE_MAX_STATUS)
  max_stat_len = PCXHR_SIZE_MAX_STATUS;
 else max_stat_len = rmh->stat_len;

 for (i = 0; i < rmh->stat_len; i++) {

  err = pcxhr_check_reg_bit(mgr, PCXHR_DSP_ISR,
       PCXHR_ISR_HI08_RXDF,
       PCXHR_ISR_HI08_RXDF,
       PCXHR_TIMEOUT_DSP, &reg);
  if (err) {
   dev_err(&mgr->pci->dev,
    "ERROR RMH stat: ISR:RXDF=1 (ISR = %x; i=%d )\n",
    reg, i);
   return err;
  }

  data = PCXHR_INPB(mgr, PCXHR_DSP_TXH) << 16;
  data |= PCXHR_INPB(mgr, PCXHR_DSP_TXM) << 8;
  data |= PCXHR_INPB(mgr, PCXHR_DSP_TXL);


  if (!i) {
   if (rmh->dsp_stat != RMH_SSIZE_FIXED) {
    if (rmh->dsp_stat == RMH_SSIZE_ARG) {
     rmh->stat_len = (data & 0x0000ff) + 1;
     data &= 0xffff00;
    } else {

     rmh->stat_len = 1;
     size_mask = data;
     while (size_mask) {
      if (size_mask & 1)
       rmh->stat_len++;
      size_mask >>= 1;
     }
    }
   }
  }




  if (i < max_stat_len)
   rmh->stat[i] = data;
 }
 if (rmh->stat_len > max_stat_len) {
  dev_dbg(&mgr->pci->dev, "PCXHR : rmh->stat_len=%x too big\n",
       rmh->stat_len);
  rmh->stat_len = max_stat_len;
 }
 return 0;
}
