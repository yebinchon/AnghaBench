
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock {int lock_refs; } ;


 int kref_get (int *) ;

void dlm_lock_get(struct dlm_lock *lock)
{
 kref_get(&lock->lock_refs);
}
