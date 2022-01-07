
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcxhr_rmh {int* stat; int* cmd; int cmd_len; } ;
struct pcxhr_mgr {int capture_chips; int playback_chips; int firmware_num; int granularity; int dsp_version; scalar_t__ is_hr_stereo; TYPE_1__* pci; scalar_t__ mono_capture; } ;
struct TYPE_2__ {int dev; } ;


 int CMD_SUPPORTED ;
 int CMD_VERSION ;
 int EINVAL ;
 int FIELD_SIZE ;
 int MASK_FIRST_FIELD ;
 int PCXHR_PLAYBACK_STREAMS ;
 int dev_dbg (int *,char*,int,int,...) ;
 int hr222_sub_init (struct pcxhr_mgr*) ;
 int pcxhr_enable_dsp (struct pcxhr_mgr*) ;
 int pcxhr_init_rmh (struct pcxhr_rmh*,int ) ;
 int pcxhr_send_msg (struct pcxhr_mgr*,struct pcxhr_rmh*) ;
 int pcxhr_sub_init (struct pcxhr_mgr*) ;

__attribute__((used)) static int pcxhr_init_board(struct pcxhr_mgr *mgr)
{
 int err;
 struct pcxhr_rmh rmh;
 int card_streams;


 if (mgr->mono_capture)
  card_streams = mgr->capture_chips * 2;
 else
  card_streams = mgr->capture_chips;
 card_streams += mgr->playback_chips * PCXHR_PLAYBACK_STREAMS;


 pcxhr_enable_dsp(mgr);

 pcxhr_init_rmh(&rmh, CMD_SUPPORTED);
 err = pcxhr_send_msg(mgr, &rmh);
 if (err)
  return err;

 if ((rmh.stat[0] & MASK_FIRST_FIELD) < mgr->playback_chips * 2)
  return -EINVAL;

 if (((rmh.stat[0] >> (2 * FIELD_SIZE)) & MASK_FIRST_FIELD) <
     mgr->capture_chips * 2)
  return -EINVAL;

 if ((rmh.stat[1] & 0x5F) < card_streams)
  return -EINVAL;

 if (((rmh.stat[1] >> 7) & 0x5F) < PCXHR_PLAYBACK_STREAMS)
  return -EINVAL;
 dev_dbg(&mgr->pci->dev,
  "supported formats : playback=%x capture=%x\n",
      rmh.stat[2], rmh.stat[3]);

 pcxhr_init_rmh(&rmh, CMD_VERSION);

 rmh.cmd[0] |= mgr->firmware_num;

 rmh.cmd[1] = (1<<23) + mgr->granularity;
 rmh.cmd_len = 2;
 err = pcxhr_send_msg(mgr, &rmh);
 if (err)
  return err;
 dev_dbg(&mgr->pci->dev,
  "PCXHR DSP version is %d.%d.%d\n", (rmh.stat[0]>>16)&0xff,
      (rmh.stat[0]>>8)&0xff, rmh.stat[0]&0xff);
 mgr->dsp_version = rmh.stat[0];

 if (mgr->is_hr_stereo)
  err = hr222_sub_init(mgr);
 else
  err = pcxhr_sub_init(mgr);
 return err;
}
