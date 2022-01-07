
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int addr; } ;
struct pcxhr_mgr {TYPE_1__ hostport; } ;
struct firmware {int dummy; } ;


 int EINVAL ;
 unsigned int PCXHR_INPL (struct pcxhr_mgr*,int ) ;
 int PCXHR_IT_DOWNLOAD_BOOT ;
 unsigned int PCXHR_MBOX0_HF5 ;
 int PCXHR_OUTPL (struct pcxhr_mgr*,int ,unsigned int) ;
 int PCXHR_PLX_MBOX0 ;
 int PCXHR_PLX_MBOX1 ;
 int PCXHR_TIMEOUT_DSP ;
 int pcxhr_check_reg_bit (struct pcxhr_mgr*,int ,unsigned int,unsigned int,int ,unsigned char*) ;
 int pcxhr_download_dsp (struct pcxhr_mgr*,struct firmware const*) ;
 int pcxhr_send_it_dsp (struct pcxhr_mgr*,int ,int ) ;
 scalar_t__ snd_BUG_ON (unsigned int) ;

int pcxhr_load_boot_binary(struct pcxhr_mgr *mgr, const struct firmware *boot)
{
 int err;
 unsigned int physaddr = mgr->hostport.addr;
 unsigned char dummy;


 if (snd_BUG_ON(physaddr & 0xff))
  return -EINVAL;
 PCXHR_OUTPL(mgr, PCXHR_PLX_MBOX1, (physaddr >> 8));

 err = pcxhr_send_it_dsp(mgr, PCXHR_IT_DOWNLOAD_BOOT, 0);
 if (err)
  return err;

 PCXHR_OUTPL(mgr, PCXHR_PLX_MBOX0,
      PCXHR_INPL(mgr, PCXHR_PLX_MBOX0) & ~PCXHR_MBOX0_HF5);

 err = pcxhr_download_dsp(mgr, boot);
 if (err)
  return err;

 return pcxhr_check_reg_bit(mgr, PCXHR_PLX_MBOX0, PCXHR_MBOX0_HF5,
       PCXHR_MBOX0_HF5, PCXHR_TIMEOUT_DSP, &dummy);
}
