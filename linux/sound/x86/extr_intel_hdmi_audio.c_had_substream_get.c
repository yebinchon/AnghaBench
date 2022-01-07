
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int substream_refcount; struct snd_pcm_substream* substream; } ;
struct snd_intelhad {int had_spinlock; TYPE_1__ stream_info; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct snd_pcm_substream *
had_substream_get(struct snd_intelhad *intelhaddata)
{
 struct snd_pcm_substream *substream;
 unsigned long flags;

 spin_lock_irqsave(&intelhaddata->had_spinlock, flags);
 substream = intelhaddata->stream_info.substream;
 if (substream)
  intelhaddata->stream_info.substream_refcount++;
 spin_unlock_irqrestore(&intelhaddata->had_spinlock, flags);
 return substream;
}
