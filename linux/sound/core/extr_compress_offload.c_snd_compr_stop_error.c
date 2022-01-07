
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_compr_stream {int error_work; TYPE_1__* runtime; } ;
typedef scalar_t__ snd_pcm_state_t ;
struct TYPE_2__ {scalar_t__ state; } ;


 int pr_debug (char*,scalar_t__) ;
 int queue_delayed_work (int ,int *,int ) ;
 int system_power_efficient_wq ;

int snd_compr_stop_error(struct snd_compr_stream *stream,
    snd_pcm_state_t state)
{
 if (stream->runtime->state == state)
  return 0;

 stream->runtime->state = state;

 pr_debug("Changing state to: %d\n", state);

 queue_delayed_work(system_power_efficient_wq, &stream->error_work, 0);

 return 0;
}
