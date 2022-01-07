
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_line6_pcm {TYPE_1__* line6; } ;
struct line6_pcm_stream {int active_urbs; } ;
struct TYPE_2__ {int iso_buffers; int ifcdev; } ;


 int HZ ;
 int TASK_UNINTERRUPTIBLE ;
 int dev_err (int ,char*,int) ;
 int schedule_timeout (int) ;
 int set_current_state (int ) ;
 scalar_t__ test_bit (int,int *) ;

__attribute__((used)) static void line6_wait_clear_audio_urbs(struct snd_line6_pcm *line6pcm,
     struct line6_pcm_stream *pcms)
{
 int timeout = HZ;
 int i;
 int alive;

 do {
  alive = 0;
  for (i = 0; i < line6pcm->line6->iso_buffers; i++) {
   if (test_bit(i, &pcms->active_urbs))
    alive++;
  }
  if (!alive)
   break;
  set_current_state(TASK_UNINTERRUPTIBLE);
  schedule_timeout(1);
 } while (--timeout > 0);
 if (alive)
  dev_err(line6pcm->line6->ifcdev,
   "timeout: still %d active urbs..\n", alive);
}
