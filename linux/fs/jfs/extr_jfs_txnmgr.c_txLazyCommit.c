
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tblock {int flag; int gcwait; int sb; } ;
struct jfs_log {int gclock; int gcrtc; } ;
struct TYPE_2__ {scalar_t__ log; } ;


 TYPE_1__* JFS_SBI (int ) ;
 int TxBlock ;
 int jfs_info (char*,struct tblock*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tblkGC_COMMITTED ;
 int tblkGC_LAZY ;
 int tblkGC_READY ;
 int tblkGC_UNLOCKED ;
 int txEnd (struct tblock*) ;
 int txUnlock (struct tblock*) ;
 int txUpdateMap (struct tblock*) ;
 int wake_up_all (int *) ;
 int yield () ;

__attribute__((used)) static void txLazyCommit(struct tblock * tblk)
{
 struct jfs_log *log;

 while (((tblk->flag & tblkGC_READY) == 0) &&
        ((tblk->flag & tblkGC_UNLOCKED) == 0)) {


  jfs_info("jfs_lazycommit: tblk 0x%p not unlocked", tblk);
  yield();
 }

 jfs_info("txLazyCommit: processing tblk 0x%p", tblk);

 txUpdateMap(tblk);

 log = (struct jfs_log *) JFS_SBI(tblk->sb)->log;

 spin_lock_irq(&log->gclock);

 tblk->flag |= tblkGC_COMMITTED;

 if (tblk->flag & tblkGC_READY)
  log->gcrtc--;

 wake_up_all(&tblk->gcwait);




 if (tblk->flag & tblkGC_LAZY) {
  spin_unlock_irq(&log->gclock);
  txUnlock(tblk);
  tblk->flag &= ~tblkGC_LAZY;
  txEnd(tblk - TxBlock);
 } else
  spin_unlock_irq(&log->gclock);

 jfs_info("txLazyCommit: done: tblk = 0x%p", tblk);
}
