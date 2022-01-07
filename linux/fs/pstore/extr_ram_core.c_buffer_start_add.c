
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct persistent_ram_zone {int flags; int buffer_size; int buffer_lock; TYPE_1__* buffer; } ;
struct TYPE_2__ {int start; } ;


 int PRZ_FLAG_NO_LOCK ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static size_t buffer_start_add(struct persistent_ram_zone *prz, size_t a)
{
 int old;
 int new;
 unsigned long flags = 0;

 if (!(prz->flags & PRZ_FLAG_NO_LOCK))
  raw_spin_lock_irqsave(&prz->buffer_lock, flags);

 old = atomic_read(&prz->buffer->start);
 new = old + a;
 while (unlikely(new >= prz->buffer_size))
  new -= prz->buffer_size;
 atomic_set(&prz->buffer->start, new);

 if (!(prz->flags & PRZ_FLAG_NO_LOCK))
  raw_spin_unlock_irqrestore(&prz->buffer_lock, flags);

 return old;
}
