
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int dummy; } ;


 int down_read_trylock (struct rw_semaphore*) ;
 scalar_t__ unlikely (int ) ;
 int up_read (struct rw_semaphore*) ;

__attribute__((used)) static inline bool rwsem_is_wrlocked(struct rw_semaphore *sem)
{
 bool wrlocked = 1;

 if (unlikely(down_read_trylock(sem))) {
  wrlocked = 0;
  up_read(sem);
 }

 return wrlocked;
}
