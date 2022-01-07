
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int count; scalar_t__ rear_size; scalar_t__ block_size; int syncing; scalar_t__ active; } ;


 int Q40PlayNextFrame (int) ;
 TYPE_2__ dmasound ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__ write_sq ;

__attribute__((used)) static void Q40Play(void)
{
        unsigned long flags;

 if (write_sq.active || write_sq.count<=0 ) {

  return;
 }


 if (write_sq.count <= 1 && write_sq.rear_size < write_sq.block_size && !write_sq.syncing) {



          return;
 }
 spin_lock_irqsave(&dmasound.lock, flags);
 Q40PlayNextFrame(1);
 spin_unlock_irqrestore(&dmasound.lock, flags);
}
