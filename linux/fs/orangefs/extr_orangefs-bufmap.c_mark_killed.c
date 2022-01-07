
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct slot_map {TYPE_1__ q; scalar_t__ count; int c; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void mark_killed(struct slot_map *m)
{
 spin_lock(&m->q.lock);
 m->c -= m->count + 1;
 spin_unlock(&m->q.lock);
}
