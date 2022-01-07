
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int dummy; } ;


 int __rwsem_set_reader_owned (struct rw_semaphore*,int ) ;
 int current ;

__attribute__((used)) static inline void rwsem_set_reader_owned(struct rw_semaphore *sem)
{
 __rwsem_set_reader_owned(sem, current);
}
