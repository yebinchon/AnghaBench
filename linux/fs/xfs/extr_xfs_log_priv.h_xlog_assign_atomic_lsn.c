
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int atomic64_t ;


 int atomic64_set (int *,int ) ;
 int xlog_assign_lsn (int ,int ) ;

__attribute__((used)) static inline void
xlog_assign_atomic_lsn(atomic64_t *lsn, uint cycle, uint block)
{
 atomic64_set(lsn, xlog_assign_lsn(cycle, block));
}
