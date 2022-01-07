
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockref {int count; int lock; } ;


 int assert_spin_locked (int *) ;

void lockref_mark_dead(struct lockref *lockref)
{
 assert_spin_locked(&lockref->lock);
 lockref->count = -128;
}
