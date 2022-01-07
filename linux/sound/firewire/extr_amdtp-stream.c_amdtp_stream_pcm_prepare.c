
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_stream {scalar_t__ pcm_period_pointer; scalar_t__ pcm_buffer_pointer; int period_tasklet; } ;


 int tasklet_kill (int *) ;

void amdtp_stream_pcm_prepare(struct amdtp_stream *s)
{
 tasklet_kill(&s->period_tasklet);
 s->pcm_buffer_pointer = 0;
 s->pcm_period_pointer = 0;
}
