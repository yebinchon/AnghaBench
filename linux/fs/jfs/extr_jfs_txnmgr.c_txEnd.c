
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tid_t ;
struct tblock {int flag; scalar_t__ next; int sb; int waitor; } ;
struct jfs_log {scalar_t__ active; scalar_t__ lsn; int syncwait; int flag; int gclock; } ;
struct TYPE_4__ {struct jfs_log* log; } ;
struct TYPE_3__ {scalar_t__ freetid; int freewait; } ;


 TYPE_2__* JFS_SBI (int ) ;
 int TXN_LOCK () ;
 int TXN_UNLOCK () ;
 int TXN_WAKEUP (int *) ;
 TYPE_1__ TxAnchor ;
 int assert (int) ;
 int clear_bit (int ,int *) ;
 int jfs_info (char*,scalar_t__,...) ;
 int jfs_syncpt (struct jfs_log*,int) ;
 int log_FLUSH ;
 int log_SYNCBARRIER ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tblkGC_LAZY ;
 int tblkGC_UNLOCKED ;
 scalar_t__ test_bit (int ,int *) ;
 struct tblock* tid_to_tblock (scalar_t__) ;

void txEnd(tid_t tid)
{
 struct tblock *tblk = tid_to_tblock(tid);
 struct jfs_log *log;

 jfs_info("txEnd: tid = %d", tid);
 TXN_LOCK();





 TXN_WAKEUP(&tblk->waitor);

 log = JFS_SBI(tblk->sb)->log;
 if (tblk->flag & tblkGC_LAZY) {
  jfs_info("txEnd called w/lazy tid: %d, tblk = 0x%p", tid, tblk);
  TXN_UNLOCK();

  spin_lock_irq(&log->gclock);
  tblk->flag |= tblkGC_UNLOCKED;
  spin_unlock_irq(&log->gclock);
  return;
 }

 jfs_info("txEnd: tid: %d, tblk = 0x%p", tid, tblk);

 assert(tblk->next == 0);




 tblk->next = TxAnchor.freetid;
 TxAnchor.freetid = tid;




 if (--log->active == 0) {
  clear_bit(log_FLUSH, &log->flag);




  if (test_bit(log_SYNCBARRIER, &log->flag)) {
   TXN_UNLOCK();


   jfs_syncpt(log, 1);

   jfs_info("log barrier off: 0x%x", log->lsn);


   clear_bit(log_SYNCBARRIER, &log->flag);


   TXN_WAKEUP(&log->syncwait);

   goto wakeup;
  }
 }

 TXN_UNLOCK();
wakeup:



 TXN_WAKEUP(&TxAnchor.freewait);
}
