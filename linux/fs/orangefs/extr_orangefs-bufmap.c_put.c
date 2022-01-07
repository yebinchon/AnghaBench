
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct slot_map {int c; TYPE_1__ q; int map; } ;


 int __clear_bit (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wake_up_all_locked (TYPE_1__*) ;
 int wake_up_locked (TYPE_1__*) ;

__attribute__((used)) static void put(struct slot_map *m, int slot)
{
 int v;
 spin_lock(&m->q.lock);
 __clear_bit(slot, m->map);
 v = ++m->c;
 if (v > 0)
  wake_up_locked(&m->q);
 if (unlikely(v == -1))
  wake_up_all_locked(&m->q);
 spin_unlock(&m->q.lock);
}
