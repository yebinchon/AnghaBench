
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int substream_refcount; } ;
struct snd_intelhad {int had_spinlock; TYPE_1__ stream_info; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void had_substream_put(struct snd_intelhad *intelhaddata)
{
 unsigned long flags;

 spin_lock_irqsave(&intelhaddata->had_spinlock, flags);
 intelhaddata->stream_info.substream_refcount--;
 spin_unlock_irqrestore(&intelhaddata->had_spinlock, flags);
}
