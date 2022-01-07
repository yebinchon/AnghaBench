
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_lsn_t ;
struct xlog {int l_curr_cycle; int l_curr_block; int l_icloglock; } ;


 int BLOCK_LSN (int ) ;
 int CYCLE_LSN (int ) ;
 int READ_ONCE (int) ;
 int smp_rmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline bool
xlog_valid_lsn(
 struct xlog *log,
 xfs_lsn_t lsn)
{
 int cur_cycle;
 int cur_block;
 bool valid = 1;
 cur_cycle = READ_ONCE(log->l_curr_cycle);
 smp_rmb();
 cur_block = READ_ONCE(log->l_curr_block);

 if ((CYCLE_LSN(lsn) > cur_cycle) ||
     (CYCLE_LSN(lsn) == cur_cycle && BLOCK_LSN(lsn) > cur_block)) {





  spin_lock(&log->l_icloglock);
  cur_cycle = log->l_curr_cycle;
  cur_block = log->l_curr_block;
  spin_unlock(&log->l_icloglock);

  if ((CYCLE_LSN(lsn) > cur_cycle) ||
      (CYCLE_LSN(lsn) == cur_cycle && BLOCK_LSN(lsn) > cur_block))
   valid = 0;
 }

 return valid;
}
