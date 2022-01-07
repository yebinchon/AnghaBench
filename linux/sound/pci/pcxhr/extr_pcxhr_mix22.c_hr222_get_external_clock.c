
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcxhr_mgr {unsigned char last_reg_stat; TYPE_1__* pci; scalar_t__ board_has_aes1; } ;
typedef enum pcxhr_clock_type { ____Placeholder_pcxhr_clock_type } pcxhr_clock_type ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int HR22_CLOCK_TYPE_AES_1 ;
 int HR22_CLOCK_TYPE_AES_SYNC ;
 int PCXHR_DSP_RESET ;
 unsigned char PCXHR_INPB (struct pcxhr_mgr*,int ) ;
 int PCXHR_OUTPB (struct pcxhr_mgr*,int ,unsigned char) ;
 unsigned char PCXHR_STAT_FREQ_SAVE_MASK ;
 unsigned char PCXHR_STAT_FREQ_SYNC_MASK ;
 unsigned char PCXHR_STAT_FREQ_UER1_MASK ;
 unsigned char PCXHR_SUER1_CLOCK_PRESENT_MASK ;
 unsigned char PCXHR_SUER1_DATA_PRESENT_MASK ;
 unsigned char PCXHR_SUER_CLOCK_PRESENT_MASK ;
 unsigned char PCXHR_SUER_DATA_PRESENT_MASK ;
 int PCXHR_XLX_CFG ;
 int PCXHR_XLX_CSUER ;
 int PCXHR_XLX_STATUS ;
 int dev_dbg (int *,char*,int,...) ;
 int udelay (int) ;

int hr222_get_external_clock(struct pcxhr_mgr *mgr,
        enum pcxhr_clock_type clock_type,
        int *sample_rate)
{
 int rate, calc_rate = 0;
 unsigned int ticks;
 unsigned char mask, reg;

 if (clock_type == HR22_CLOCK_TYPE_AES_SYNC) {

  mask = (PCXHR_SUER_CLOCK_PRESENT_MASK |
   PCXHR_SUER_DATA_PRESENT_MASK);
  reg = PCXHR_STAT_FREQ_SYNC_MASK;

 } else if (clock_type == HR22_CLOCK_TYPE_AES_1 && mgr->board_has_aes1) {

  mask = (PCXHR_SUER1_CLOCK_PRESENT_MASK |
   PCXHR_SUER1_DATA_PRESENT_MASK);
  reg = PCXHR_STAT_FREQ_UER1_MASK;

 } else {
  dev_dbg(&mgr->pci->dev,
   "get_external_clock : type %d not supported\n",
       clock_type);
  return -EINVAL;
 }

 if ((PCXHR_INPB(mgr, PCXHR_XLX_CSUER) & mask) != mask) {
  dev_dbg(&mgr->pci->dev,
   "get_external_clock(%d) = 0 Hz\n", clock_type);
  *sample_rate = 0;
  return 0;
 }

 PCXHR_OUTPB(mgr, PCXHR_XLX_STATUS, reg);


 reg |= PCXHR_STAT_FREQ_SAVE_MASK;

 if (mgr->last_reg_stat != reg) {
  udelay(500);
  mgr->last_reg_stat = reg;
 }

 PCXHR_OUTPB(mgr, PCXHR_XLX_STATUS, reg);


 ticks = (unsigned int)PCXHR_INPB(mgr, PCXHR_XLX_CFG);
 ticks = (ticks & 0x03) << 8;
 ticks |= (unsigned int)PCXHR_INPB(mgr, PCXHR_DSP_RESET);

 if (ticks != 0)
  calc_rate = 28224000 / ticks;

 if (calc_rate > 184200)
  rate = 192000;
 else if (calc_rate > 152200)
  rate = 176400;
 else if (calc_rate > 112000)
  rate = 128000;
 else if (calc_rate > 92100)
  rate = 96000;
 else if (calc_rate > 76100)
  rate = 88200;
 else if (calc_rate > 56000)
  rate = 64000;
 else if (calc_rate > 46050)
  rate = 48000;
 else if (calc_rate > 38050)
  rate = 44100;
 else if (calc_rate > 28000)
  rate = 32000;
 else if (calc_rate > 23025)
  rate = 24000;
 else if (calc_rate > 19025)
  rate = 22050;
 else if (calc_rate > 14000)
  rate = 16000;
 else if (calc_rate > 11512)
  rate = 12000;
 else if (calc_rate > 9512)
  rate = 11025;
 else if (calc_rate > 7000)
  rate = 8000;
 else
  rate = 0;

 dev_dbg(&mgr->pci->dev, "External clock is at %d Hz (measured %d Hz)\n",
      rate, calc_rate);
 *sample_rate = rate;
 return 0;
}
