
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbitmap {TYPE_1__* map; } ;
struct TYPE_2__ {unsigned long word; int swap_lock; int cleared; } ;


 unsigned long cmpxchg (unsigned long*,unsigned long,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long xchg (int *,int ) ;

__attribute__((used)) static inline bool sbitmap_deferred_clear(struct sbitmap *sb, int index)
{
 unsigned long mask, val;
 bool ret = 0;
 unsigned long flags;

 spin_lock_irqsave(&sb->map[index].swap_lock, flags);

 if (!sb->map[index].cleared)
  goto out_unlock;




 mask = xchg(&sb->map[index].cleared, 0);




 do {
  val = sb->map[index].word;
 } while (cmpxchg(&sb->map[index].word, val, val & ~mask) != val);

 ret = 1;
out_unlock:
 spin_unlock_irqrestore(&sb->map[index].swap_lock, flags);
 return ret;
}
