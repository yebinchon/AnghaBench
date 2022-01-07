
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_lsn_t ;
typedef int uint ;
typedef int atomic64_t ;


 int BLOCK_LSN (int ) ;
 int CYCLE_LSN (int ) ;
 int atomic64_read (int *) ;

__attribute__((used)) static inline void
xlog_crack_atomic_lsn(atomic64_t *lsn, uint *cycle, uint *block)
{
 xfs_lsn_t val = atomic64_read(lsn);

 *cycle = CYCLE_LSN(val);
 *block = BLOCK_LSN(val);
}
