
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct mts64 {scalar_t__ open_count; int lock; } ;
struct TYPE_2__ {struct mts64* private_data; } ;


 int msleep (int) ;
 int mts64_device_close (struct mts64*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_mts64_rawmidi_close(struct snd_rawmidi_substream *substream)
{
 struct mts64 *mts = substream->rmidi->private_data;
 unsigned long flags;

 --(mts->open_count);
 if (mts->open_count == 0) {


  spin_lock_irqsave(&mts->lock, flags);
  mts64_device_close(mts);
  spin_unlock_irqrestore(&mts->lock, flags);

  msleep(500);

 } else if (mts->open_count < 0)
  mts->open_count = 0;

 return 0;
}
