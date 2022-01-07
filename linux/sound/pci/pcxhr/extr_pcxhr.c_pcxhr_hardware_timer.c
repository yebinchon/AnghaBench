
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcxhr_rmh {int * cmd; } ;
struct pcxhr_mgr {TYPE_1__* pci; int granularity; int dsp_time_last; } ;
struct TYPE_2__ {int dev; } ;


 int CMD_SET_TIMER_INTERRUPT ;
 int PCXHR_DSP_TIME_INVALID ;
 int dev_err (int *,char*,int) ;
 int pcxhr_init_rmh (struct pcxhr_rmh*,int ) ;
 int pcxhr_send_msg (struct pcxhr_mgr*,struct pcxhr_rmh*) ;

__attribute__((used)) static int pcxhr_hardware_timer(struct pcxhr_mgr *mgr, int start)
{
 struct pcxhr_rmh rmh;
 int err;

 pcxhr_init_rmh(&rmh, CMD_SET_TIMER_INTERRUPT);
 if (start) {

  mgr->dsp_time_last = PCXHR_DSP_TIME_INVALID;
  rmh.cmd[0] |= mgr->granularity;
 }
 err = pcxhr_send_msg(mgr, &rmh);
 if (err < 0)
  dev_err(&mgr->pci->dev, "error pcxhr_hardware_timer err(%x)\n",
      err);
 return err;
}
