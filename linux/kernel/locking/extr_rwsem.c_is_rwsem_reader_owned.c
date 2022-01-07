
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int count; } ;


 int RWSEM_READER_OWNED ;
 long RWSEM_WRITER_MASK ;
 long atomic_long_read (int *) ;
 int rwsem_test_oflags (struct rw_semaphore*,int ) ;

__attribute__((used)) static inline bool is_rwsem_reader_owned(struct rw_semaphore *sem)
{
 return rwsem_test_oflags(sem, RWSEM_READER_OWNED);
}
