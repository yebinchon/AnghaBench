
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct persistent_ram_zone {int flags; size_t buffer_size; int buffer_lock; TYPE_1__* buffer; } ;
struct TYPE_2__ {int size; } ;


 int PRZ_FLAG_NO_LOCK ;
 size_t atomic_read (int *) ;
 int atomic_set (int *,size_t) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void buffer_size_add(struct persistent_ram_zone *prz, size_t a)
{
 size_t old;
 size_t new;
 unsigned long flags = 0;

 if (!(prz->flags & PRZ_FLAG_NO_LOCK))
  raw_spin_lock_irqsave(&prz->buffer_lock, flags);

 old = atomic_read(&prz->buffer->size);
 if (old == prz->buffer_size)
  goto exit;

 new = old + a;
 if (new > prz->buffer_size)
  new = prz->buffer_size;
 atomic_set(&prz->buffer->size, new);

exit:
 if (!(prz->flags & PRZ_FLAG_NO_LOCK))
  raw_spin_unlock_irqrestore(&prz->buffer_lock, flags);
}
