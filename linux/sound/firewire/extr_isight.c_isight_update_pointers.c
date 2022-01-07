
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_runtime {unsigned int buffer_size; scalar_t__ period_size; } ;
struct isight {unsigned int buffer_pointer; scalar_t__ period_counter; TYPE_1__* pcm; } ;
struct TYPE_2__ {struct snd_pcm_runtime* runtime; } ;


 int WRITE_ONCE (unsigned int,unsigned int) ;
 int smp_wmb () ;
 int snd_pcm_period_elapsed (TYPE_1__*) ;

__attribute__((used)) static void isight_update_pointers(struct isight *isight, unsigned int count)
{
 struct snd_pcm_runtime *runtime = isight->pcm->runtime;
 unsigned int ptr;

 smp_wmb();

 ptr = isight->buffer_pointer;
 ptr += count;
 if (ptr >= runtime->buffer_size)
  ptr -= runtime->buffer_size;
 WRITE_ONCE(isight->buffer_pointer, ptr);

 isight->period_counter += count;
 if (isight->period_counter >= runtime->period_size) {
  isight->period_counter -= runtime->period_size;
  snd_pcm_period_elapsed(isight->pcm);
 }
}
