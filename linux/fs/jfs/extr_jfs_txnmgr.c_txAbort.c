
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tid_t ;
struct tlock {int ip; struct metapage* mp; scalar_t__ next; } ;
struct tblock {int sb; scalar_t__ last; scalar_t__ next; } ;
struct metapage {int xflag; scalar_t__ lsn; scalar_t__ lid; } ;
typedef scalar_t__ lid_t ;
struct TYPE_2__ {scalar_t__ xtlid; } ;


 int COMMIT_PAGE ;
 TYPE_1__* JFS_IP (int ) ;
 int LogSyncRelease (struct metapage*) ;
 int TXN_LOCK () ;
 int TXN_UNLOCK () ;
 int jfs_error (int ,char*) ;
 struct tlock* lid_to_tlock (scalar_t__) ;
 struct tblock* tid_to_tblock (int ) ;
 int txLockFree (scalar_t__) ;

void txAbort(tid_t tid, int dirty)
{
 lid_t lid, next;
 struct metapage *mp;
 struct tblock *tblk = tid_to_tblock(tid);
 struct tlock *tlck;




 for (lid = tblk->next; lid; lid = next) {
  tlck = lid_to_tlock(lid);
  next = tlck->next;
  mp = tlck->mp;
  JFS_IP(tlck->ip)->xtlid = 0;

  if (mp) {
   mp->lid = 0;
   if (mp->xflag & COMMIT_PAGE && mp->lsn)
    LogSyncRelease(mp);
  }

  TXN_LOCK();
  txLockFree(lid);
  TXN_UNLOCK();
 }



 tblk->next = tblk->last = 0;




 if (dirty)
  jfs_error(tblk->sb, "\n");

 return;
}
