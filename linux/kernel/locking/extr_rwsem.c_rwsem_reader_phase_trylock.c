
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int dummy; } ;



__attribute__((used)) static inline bool rwsem_reader_phase_trylock(struct rw_semaphore *sem,
           unsigned long last_rowner)
{
 return 0;
}
