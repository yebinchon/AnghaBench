
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {scalar_t__ substream_refcount; int * substream; } ;
struct snd_intelhad {int dev; int had_spinlock; TYPE_1__ stream_info; } ;


 int cpu_relax () ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 struct snd_intelhad* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int had_pcm_close(struct snd_pcm_substream *substream)
{
 struct snd_intelhad *intelhaddata;

 intelhaddata = snd_pcm_substream_chip(substream);


 spin_lock_irq(&intelhaddata->had_spinlock);
 intelhaddata->stream_info.substream = ((void*)0);
 intelhaddata->stream_info.substream_refcount--;
 while (intelhaddata->stream_info.substream_refcount > 0) {
  spin_unlock_irq(&intelhaddata->had_spinlock);
  cpu_relax();
  spin_lock_irq(&intelhaddata->had_spinlock);
 }
 spin_unlock_irq(&intelhaddata->had_spinlock);

 pm_runtime_mark_last_busy(intelhaddata->dev);
 pm_runtime_put_autosuspend(intelhaddata->dev);
 return 0;
}
