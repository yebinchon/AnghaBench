
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int raw_lock; } ;
typedef TYPE_1__ rwlock_t ;


 int arch_write_lock (int *) ;
 int debug_write_lock_after (TYPE_1__*) ;
 int debug_write_lock_before (TYPE_1__*) ;

void do_raw_write_lock(rwlock_t *lock)
{
 debug_write_lock_before(lock);
 arch_write_lock(&lock->raw_lock);
 debug_write_lock_after(lock);
}
