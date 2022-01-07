
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vx_pipe {int running; int is_capture; } ;
struct vx_core {int chip_status; int pcm_running; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct vx_pipe* private_data; } ;


 int EBUSY ;
 int EINVAL ;






 int VX_STAT_IS_STALE ;
 int pr_debug (char*) ;
 struct vx_core* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int vx_pcm_playback_transfer (struct vx_core*,struct snd_pcm_substream*,struct vx_pipe*,int) ;
 int vx_start_stream (struct vx_core*,struct vx_pipe*) ;
 int vx_stop_pipe (struct vx_core*,struct vx_pipe*) ;
 int vx_stop_stream (struct vx_core*,struct vx_pipe*) ;
 int vx_toggle_pipe (struct vx_core*,struct vx_pipe*,int) ;

__attribute__((used)) static int vx_pcm_trigger(struct snd_pcm_substream *subs, int cmd)
{
 struct vx_core *chip = snd_pcm_substream_chip(subs);
 struct vx_pipe *pipe = subs->runtime->private_data;
 int err;

 if (chip->chip_status & VX_STAT_IS_STALE)
  return -EBUSY;

 switch (cmd) {
 case 130:
 case 131:
  if (! pipe->is_capture)
   vx_pcm_playback_transfer(chip, subs, pipe, 2);
  err = vx_start_stream(chip, pipe);
  if (err < 0) {
   pr_debug("vx: cannot start stream\n");
   return err;
  }
  err = vx_toggle_pipe(chip, pipe, 1);
  if (err < 0) {
   pr_debug("vx: cannot start pipe\n");
   vx_stop_stream(chip, pipe);
   return err;
  }
  chip->pcm_running++;
  pipe->running = 1;
  break;
 case 129:
 case 128:
  vx_toggle_pipe(chip, pipe, 0);
  vx_stop_pipe(chip, pipe);
  vx_stop_stream(chip, pipe);
  chip->pcm_running--;
  pipe->running = 0;
  break;
 case 133:
  if ((err = vx_toggle_pipe(chip, pipe, 0)) < 0)
   return err;
  break;
 case 132:
  if ((err = vx_toggle_pipe(chip, pipe, 1)) < 0)
   return err;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
