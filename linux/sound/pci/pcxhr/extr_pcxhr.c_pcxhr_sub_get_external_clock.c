
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcxhr_rmh {int cmd_len; unsigned char* cmd; int* stat; } ;
struct pcxhr_mgr {unsigned char last_reg_stat; TYPE_1__* pci; } ;
typedef enum pcxhr_clock_type { ____Placeholder_pcxhr_clock_type } pcxhr_clock_type ;
struct TYPE_2__ {int dev; } ;


 int CMD_ACCESS_IO_READ ;
 int EINVAL ;
 unsigned char IO_NUM_REG_STATUS ;






 unsigned char REG_STATUS_AES_1 ;
 unsigned char REG_STATUS_AES_2 ;
 unsigned char REG_STATUS_AES_3 ;
 unsigned char REG_STATUS_AES_4 ;
 unsigned char REG_STATUS_AES_SYNC ;
 unsigned char REG_STATUS_CURRENT ;
 unsigned char REG_STATUS_WORD_CLOCK ;
 int dev_dbg (int *,char*,int) ;
 int pcxhr_init_rmh (struct pcxhr_rmh*,int ) ;
 int pcxhr_send_msg (struct pcxhr_mgr*,struct pcxhr_rmh*) ;
 int udelay (int) ;

__attribute__((used)) static int pcxhr_sub_get_external_clock(struct pcxhr_mgr *mgr,
     enum pcxhr_clock_type clock_type,
     int *sample_rate)
{
 struct pcxhr_rmh rmh;
 unsigned char reg;
 int err, rate;

 switch (clock_type) {
 case 137:
  reg = REG_STATUS_WORD_CLOCK;
  break;
 case 138:
  reg = REG_STATUS_AES_SYNC;
  break;
 case 142:
  reg = REG_STATUS_AES_1;
  break;
 case 141:
  reg = REG_STATUS_AES_2;
  break;
 case 140:
  reg = REG_STATUS_AES_3;
  break;
 case 139:
  reg = REG_STATUS_AES_4;
  break;
 default:
  return -EINVAL;
 }
 pcxhr_init_rmh(&rmh, CMD_ACCESS_IO_READ);
 rmh.cmd_len = 2;
 rmh.cmd[0] |= IO_NUM_REG_STATUS;
 if (mgr->last_reg_stat != reg) {
  rmh.cmd[1] = reg;
  err = pcxhr_send_msg(mgr, &rmh);
  if (err)
   return err;
  udelay(100);
  mgr->last_reg_stat = reg;
 }
 rmh.cmd[1] = REG_STATUS_CURRENT;
 err = pcxhr_send_msg(mgr, &rmh);
 if (err)
  return err;
 switch (rmh.stat[1] & 0x0f) {
 case 133 : rate = 32000; break;
 case 132 : rate = 44100; break;
 case 131 : rate = 48000; break;
 case 130 : rate = 64000; break;
 case 129 : rate = 88200; break;
 case 128 : rate = 96000; break;
 case 136 : rate = 128000; break;
 case 135 : rate = 176400; break;
 case 134 : rate = 192000; break;
 default: rate = 0;
 }
 dev_dbg(&mgr->pci->dev, "External clock is at %d Hz\n", rate);
 *sample_rate = rate;
 return 0;
}
