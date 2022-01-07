
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct jfs_log {int syncwait; int flag; } ;
struct TYPE_6__ {struct jfs_log* log; } ;
struct TYPE_5__ {scalar_t__ tlocksInUse; int lowlockwait; } ;
struct TYPE_4__ {int txBeginAnon_lockslow; int txBeginAnon_barrier; int txBeginAnon; } ;


 int INCREMENT (int ) ;
 TYPE_3__* JFS_SBI (struct super_block*) ;
 int TXN_LOCK () ;
 int TXN_SLEEP (int *) ;
 int TXN_UNLOCK () ;
 TYPE_2__ TxAnchor ;
 scalar_t__ TxLockVHWM ;
 TYPE_1__ TxStat ;
 int log_QUIESCE ;
 int log_SYNCBARRIER ;
 scalar_t__ test_bit (int ,int *) ;

void txBeginAnon(struct super_block *sb)
{
 struct jfs_log *log;

 log = JFS_SBI(sb)->log;

 TXN_LOCK();
 INCREMENT(TxStat.txBeginAnon);

      retry:



 if (test_bit(log_SYNCBARRIER, &log->flag) ||
     test_bit(log_QUIESCE, &log->flag)) {
  INCREMENT(TxStat.txBeginAnon_barrier);
  TXN_SLEEP(&log->syncwait);
  goto retry;
 }




 if (TxAnchor.tlocksInUse > TxLockVHWM) {
  INCREMENT(TxStat.txBeginAnon_lockslow);
  TXN_SLEEP(&TxAnchor.lowlockwait);
  goto retry;
 }
 TXN_UNLOCK();
}
