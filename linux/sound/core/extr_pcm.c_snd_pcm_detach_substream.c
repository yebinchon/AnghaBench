
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_3__* pstr; int * pid; TYPE_2__* timer; struct snd_pcm_runtime* runtime; } ;
struct TYPE_4__ {struct snd_pcm_runtime* rules; } ;
struct snd_pcm_runtime {TYPE_1__ hw_constraints; int control; int status; int (* private_free ) (struct snd_pcm_runtime*) ;} ;
struct snd_pcm_mmap_status {int dummy; } ;
struct snd_pcm_mmap_control {int dummy; } ;
struct TYPE_6__ {int substream_opened; } ;
struct TYPE_5__ {int lock; } ;


 int PAGE_ALIGN (int) ;
 scalar_t__ PCM_RUNTIME_CHECK (struct snd_pcm_substream*) ;
 int free_pages_exact (int ,int ) ;
 int kfree (struct snd_pcm_runtime*) ;
 int put_pid (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct snd_pcm_runtime*) ;

void snd_pcm_detach_substream(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime;

 if (PCM_RUNTIME_CHECK(substream))
  return;
 runtime = substream->runtime;
 if (runtime->private_free != ((void*)0))
  runtime->private_free(runtime);
 free_pages_exact(runtime->status,
         PAGE_ALIGN(sizeof(struct snd_pcm_mmap_status)));
 free_pages_exact(runtime->control,
         PAGE_ALIGN(sizeof(struct snd_pcm_mmap_control)));
 kfree(runtime->hw_constraints.rules);

 if (substream->timer)
  spin_lock_irq(&substream->timer->lock);
 substream->runtime = ((void*)0);
 if (substream->timer)
  spin_unlock_irq(&substream->timer->lock);
 kfree(runtime);
 put_pid(substream->pid);
 substream->pid = ((void*)0);
 substream->pstr->substream_opened--;
}
