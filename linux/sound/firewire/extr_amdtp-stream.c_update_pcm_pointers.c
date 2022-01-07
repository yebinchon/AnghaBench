
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct amdtp_stream {unsigned int pcm_buffer_pointer; scalar_t__ pcm_period_pointer; int period_tasklet; } ;
struct TYPE_2__ {unsigned int buffer_size; scalar_t__ period_size; } ;


 int WRITE_ONCE (unsigned int,unsigned int) ;
 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static void update_pcm_pointers(struct amdtp_stream *s,
    struct snd_pcm_substream *pcm,
    unsigned int frames)
{
 unsigned int ptr;

 ptr = s->pcm_buffer_pointer + frames;
 if (ptr >= pcm->runtime->buffer_size)
  ptr -= pcm->runtime->buffer_size;
 WRITE_ONCE(s->pcm_buffer_pointer, ptr);

 s->pcm_period_pointer += frames;
 if (s->pcm_period_pointer >= pcm->runtime->period_size) {
  s->pcm_period_pointer -= pcm->runtime->period_size;
  tasklet_hi_schedule(&s->period_tasklet);
 }
}
