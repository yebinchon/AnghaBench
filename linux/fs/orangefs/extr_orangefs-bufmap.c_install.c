
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct slot_map {int c; int count; unsigned long* map; TYPE_1__ q; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_all_locked (TYPE_1__*) ;

__attribute__((used)) static void install(struct slot_map *m, int count, unsigned long *map)
{
 spin_lock(&m->q.lock);
 m->c = m->count = count;
 m->map = map;
 wake_up_all_locked(&m->q);
 spin_unlock(&m->q.lock);
}
