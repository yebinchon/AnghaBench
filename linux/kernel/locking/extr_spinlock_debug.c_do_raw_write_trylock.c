
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int raw_lock; } ;
typedef TYPE_1__ rwlock_t ;


 int RWLOCK_BUG_ON (int,TYPE_1__*,char*) ;
 int arch_write_trylock (int *) ;
 int debug_write_lock_after (TYPE_1__*) ;

int do_raw_write_trylock(rwlock_t *lock)
{
 int ret = arch_write_trylock(&lock->raw_lock);

 if (ret)
  debug_write_lock_after(lock);




 RWLOCK_BUG_ON(!ret, lock, "trylock failure on UP");

 return ret;
}
