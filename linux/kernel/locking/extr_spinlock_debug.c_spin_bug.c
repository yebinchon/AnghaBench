
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int raw_spinlock_t ;


 int debug_locks_off () ;
 int spin_dump (int *,char const*) ;

__attribute__((used)) static void spin_bug(raw_spinlock_t *lock, const char *msg)
{
 if (!debug_locks_off())
  return;

 spin_dump(lock, msg);
}
