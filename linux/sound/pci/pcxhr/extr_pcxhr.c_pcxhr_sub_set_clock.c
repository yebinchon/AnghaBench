
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcxhr_rmh {int* cmd; int cmd_len; } ;
struct pcxhr_mgr {unsigned int codec_speed; unsigned int sample_rate_real; TYPE_1__* pci; int use_clock_type; int cur_clock_type; } ;
struct TYPE_2__ {int dev; } ;


 int CMD_ACCESS_IO_READ ;
 int CMD_ACCESS_IO_WRITE ;
 scalar_t__ DSP_EXT_CMD_SET (struct pcxhr_mgr*) ;
 int IO_NUM_REG_MUTE_OUT ;
 int IO_NUM_SPEED_RATIO ;
 int PCXHR_FREQ_REG_MASK ;
 int dev_dbg (int *,char*,unsigned int,...) ;
 int pcxhr_get_clock_reg (struct pcxhr_mgr*,unsigned int,unsigned int*,unsigned int*) ;
 int pcxhr_init_rmh (struct pcxhr_rmh*,int ) ;
 int pcxhr_send_msg (struct pcxhr_mgr*,struct pcxhr_rmh*) ;
 int pcxhr_write_io_num_reg_cont (struct pcxhr_mgr*,int ,unsigned int,int*) ;

__attribute__((used)) static int pcxhr_sub_set_clock(struct pcxhr_mgr *mgr,
          unsigned int rate,
          int *changed)
{
 unsigned int val, realfreq, speed;
 struct pcxhr_rmh rmh;
 int err;

 err = pcxhr_get_clock_reg(mgr, rate, &val, &realfreq);
 if (err)
  return err;


 if (rate < 55000)
  speed = 0;
 else if (rate < 100000)
  speed = 1;
 else
  speed = 2;
 if (mgr->codec_speed != speed) {
  pcxhr_init_rmh(&rmh, CMD_ACCESS_IO_WRITE);
  rmh.cmd[0] |= IO_NUM_REG_MUTE_OUT;
  if (DSP_EXT_CMD_SET(mgr)) {
   rmh.cmd[1] = 1;
   rmh.cmd_len = 2;
  }
  err = pcxhr_send_msg(mgr, &rmh);
  if (err)
   return err;

  pcxhr_init_rmh(&rmh, CMD_ACCESS_IO_WRITE);
  rmh.cmd[0] |= IO_NUM_SPEED_RATIO;
  rmh.cmd[1] = speed;
  rmh.cmd_len = 2;
  err = pcxhr_send_msg(mgr, &rmh);
  if (err)
   return err;
 }

 dev_dbg(&mgr->pci->dev, "clock register : set %x\n", val);
 err = pcxhr_write_io_num_reg_cont(mgr, PCXHR_FREQ_REG_MASK,
       val, changed);
 if (err)
  return err;

 mgr->sample_rate_real = realfreq;
 mgr->cur_clock_type = mgr->use_clock_type;


 if (mgr->codec_speed != speed) {
  pcxhr_init_rmh(&rmh, CMD_ACCESS_IO_READ);
  rmh.cmd[0] |= IO_NUM_REG_MUTE_OUT;
  if (DSP_EXT_CMD_SET(mgr)) {
   rmh.cmd[1] = 1;
   rmh.cmd_len = 2;
  }
  err = pcxhr_send_msg(mgr, &rmh);
  if (err)
   return err;
  mgr->codec_speed = speed;
 }

 dev_dbg(&mgr->pci->dev, "pcxhr_sub_set_clock to %dHz (realfreq=%d)\n",
      rate, realfreq);
 return 0;
}
