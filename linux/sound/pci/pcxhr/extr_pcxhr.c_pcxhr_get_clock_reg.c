
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcxhr_rmh {unsigned int* cmd; int cmd_len; } ;
struct pcxhr_mgr {int use_clock_type; TYPE_1__* pci; } ;
struct TYPE_2__ {int dev; } ;


 int CMD_ACCESS_IO_WRITE ;
 int EINVAL ;
 unsigned int IO_NUM_REG_GENCLK ;
 unsigned int MASK_DSP_WORD ;







 unsigned int PCXHR_FREQ_AES_1 ;
 unsigned int PCXHR_FREQ_AES_2 ;
 unsigned int PCXHR_FREQ_AES_3 ;
 unsigned int PCXHR_FREQ_AES_4 ;
 unsigned int PCXHR_FREQ_PLL ;
 unsigned int PCXHR_FREQ_QUARTZ_11025 ;
 unsigned int PCXHR_FREQ_QUARTZ_12000 ;
 unsigned int PCXHR_FREQ_QUARTZ_128000 ;
 unsigned int PCXHR_FREQ_QUARTZ_16000 ;
 unsigned int PCXHR_FREQ_QUARTZ_176400 ;
 unsigned int PCXHR_FREQ_QUARTZ_192000 ;
 unsigned int PCXHR_FREQ_QUARTZ_22050 ;
 unsigned int PCXHR_FREQ_QUARTZ_24000 ;
 unsigned int PCXHR_FREQ_QUARTZ_32000 ;
 unsigned int PCXHR_FREQ_QUARTZ_44100 ;
 unsigned int PCXHR_FREQ_QUARTZ_48000 ;
 unsigned int PCXHR_FREQ_QUARTZ_64000 ;
 unsigned int PCXHR_FREQ_QUARTZ_8000 ;
 unsigned int PCXHR_FREQ_QUARTZ_88200 ;
 unsigned int PCXHR_FREQ_QUARTZ_96000 ;
 unsigned int PCXHR_FREQ_SYNC_AES ;
 unsigned int PCXHR_FREQ_WORD_CLOCK ;
 int dev_err (int *,char*,int) ;
 int pcxhr_init_rmh (struct pcxhr_rmh*,int ) ;
 int pcxhr_pll_freq_register (unsigned int,unsigned int*,unsigned int*) ;
 int pcxhr_send_msg (struct pcxhr_mgr*,struct pcxhr_rmh*) ;

__attribute__((used)) static int pcxhr_get_clock_reg(struct pcxhr_mgr *mgr, unsigned int rate,
          unsigned int *reg, unsigned int *freq)
{
 unsigned int val, realfreq, pllreg;
 struct pcxhr_rmh rmh;
 int err;

 realfreq = rate;
 switch (mgr->use_clock_type) {
 case 129 :
  switch (rate) {
  case 48000 : val = PCXHR_FREQ_QUARTZ_48000; break;
  case 24000 : val = PCXHR_FREQ_QUARTZ_24000; break;
  case 12000 : val = PCXHR_FREQ_QUARTZ_12000; break;
  case 32000 : val = PCXHR_FREQ_QUARTZ_32000; break;
  case 16000 : val = PCXHR_FREQ_QUARTZ_16000; break;
  case 8000 : val = PCXHR_FREQ_QUARTZ_8000; break;
  case 44100 : val = PCXHR_FREQ_QUARTZ_44100; break;
  case 22050 : val = PCXHR_FREQ_QUARTZ_22050; break;
  case 11025 : val = PCXHR_FREQ_QUARTZ_11025; break;
  case 192000 : val = PCXHR_FREQ_QUARTZ_192000; break;
  case 96000 : val = PCXHR_FREQ_QUARTZ_96000; break;
  case 176400 : val = PCXHR_FREQ_QUARTZ_176400; break;
  case 88200 : val = PCXHR_FREQ_QUARTZ_88200; break;
  case 128000 : val = PCXHR_FREQ_QUARTZ_128000; break;
  case 64000 : val = PCXHR_FREQ_QUARTZ_64000; break;
  default :
   val = PCXHR_FREQ_PLL;

   err = pcxhr_pll_freq_register(rate, &pllreg, &realfreq);
   if (err)
    return err;
   pcxhr_init_rmh(&rmh, CMD_ACCESS_IO_WRITE);
   rmh.cmd[0] |= IO_NUM_REG_GENCLK;
   rmh.cmd[1] = pllreg & MASK_DSP_WORD;
   rmh.cmd[2] = pllreg >> 24;
   rmh.cmd_len = 3;
   err = pcxhr_send_msg(mgr, &rmh);
   if (err < 0) {
    dev_err(&mgr->pci->dev,
        "error CMD_ACCESS_IO_WRITE "
        "for PLL register : %x!\n", err);
    return err;
   }
  }
  break;
 case 128:
  val = PCXHR_FREQ_WORD_CLOCK;
  break;
 case 130:
  val = PCXHR_FREQ_SYNC_AES;
  break;
 case 134:
  val = PCXHR_FREQ_AES_1;
  break;
 case 133:
  val = PCXHR_FREQ_AES_2;
  break;
 case 132:
  val = PCXHR_FREQ_AES_3;
  break;
 case 131:
  val = PCXHR_FREQ_AES_4;
  break;
 default:
  return -EINVAL;
 }
 *reg = val;
 *freq = realfreq;
 return 0;
}
