
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcxhr_mgr {TYPE_1__* pci; } ;
typedef int ktime_t ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int MAX_WAIT_FOR_DSP ;
 int PCXHR_PIPE_STATE_CAPTURE_OFFSET ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 int mdelay (int) ;
 int pcxhr_pipes_running (struct pcxhr_mgr*) ;
 int pcxhr_prepair_pipe_start (struct pcxhr_mgr*,int,int*) ;
 int pcxhr_stop_pipes (struct pcxhr_mgr*,int) ;
 int pcxhr_toggle_pipes (struct pcxhr_mgr*,int) ;
 int udelay (int) ;

int pcxhr_set_pipe_state(struct pcxhr_mgr *mgr, int playback_mask,
    int capture_mask, int start)
{
 int state, i, err;
 int audio_mask;






 audio_mask = (playback_mask |
        (capture_mask << PCXHR_PIPE_STATE_CAPTURE_OFFSET));

 state = pcxhr_pipes_running(mgr);
 dev_dbg(&mgr->pci->dev,
  "pcxhr_set_pipe_state %s (mask %x current %x)\n",
      start ? "START" : "STOP", audio_mask, state);
 if (start) {

  audio_mask &= ~state;
  state = audio_mask;
  for (i = 0; i < MAX_WAIT_FOR_DSP; i++) {
   err = pcxhr_prepair_pipe_start(mgr, state, &state);
   if (err)
    return err;
   if (state == 0)
    break;
   mdelay(1);
  }
 } else {
  audio_mask &= state;
 }
 if (audio_mask == 0)
  return 0;

 err = pcxhr_toggle_pipes(mgr, audio_mask);
 if (err)
  return err;

 i = 0;
 while (1) {
  state = pcxhr_pipes_running(mgr);

  if ((state & audio_mask) == (start ? audio_mask : 0))
   break;
  if (++i >= MAX_WAIT_FOR_DSP * 100) {
   dev_err(&mgr->pci->dev, "error pipe start/stop\n");
   return -EBUSY;
  }
  udelay(10);
 }
 if (!start) {
  err = pcxhr_stop_pipes(mgr, audio_mask);
  if (err)
   return err;
 }






 return 0;
}
