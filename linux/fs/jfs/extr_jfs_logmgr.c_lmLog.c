
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlock {int type; struct metapage* mp; } ;
struct tblock {int lsn; int synclist; } ;
struct metapage {int lsn; int synclist; struct jfs_log* log; } ;
struct lrd {int dummy; } ;
struct jfs_log {int lsn; int nextsync; int count; int synclist; } ;


 int LOGSYNC_LOCK (struct jfs_log*,unsigned long) ;
 int LOGSYNC_UNLOCK (struct jfs_log*,unsigned long) ;
 int LOG_LOCK (struct jfs_log*) ;
 int LOG_UNLOCK (struct jfs_log*) ;
 int jfs_info (char*,struct jfs_log*,struct tblock*,struct lrd*,struct tlock*) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int list_move (int *,int *) ;
 int lmLogSync (struct jfs_log*,int ) ;
 int lmWriteRecord (struct jfs_log*,struct tblock*,struct lrd*,struct tlock*) ;
 int logdiff (int,int,struct jfs_log*) ;
 int tlckBTROOT ;

int lmLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
   struct tlock * tlck)
{
 int lsn;
 int diffp, difft;
 struct metapage *mp = ((void*)0);
 unsigned long flags;

 jfs_info("lmLog: log:0x%p tblk:0x%p, lrd:0x%p tlck:0x%p",
   log, tblk, lrd, tlck);

 LOG_LOCK(log);


 if (tblk == ((void*)0))
  goto writeRecord;


 if (tlck == ((void*)0) ||
     tlck->type & tlckBTROOT || (mp = tlck->mp) == ((void*)0))
  goto writeRecord;




 lsn = log->lsn;

 LOGSYNC_LOCK(log, flags);




 if (mp->lsn == 0) {
  mp->log = log;
  mp->lsn = lsn;
  log->count++;


  list_add_tail(&mp->synclist, &log->synclist);
 }
 if (tblk->lsn == 0) {

  tblk->lsn = mp->lsn;
  log->count++;


  list_add(&tblk->synclist, &mp->synclist);
 }



 else {

  logdiff(diffp, mp->lsn, log);
  logdiff(difft, tblk->lsn, log);
  if (diffp < difft) {

   tblk->lsn = mp->lsn;


   list_move(&tblk->synclist, &mp->synclist);
  }
 }

 LOGSYNC_UNLOCK(log, flags);




      writeRecord:
 lsn = lmWriteRecord(log, tblk, lrd, tlck);




 logdiff(diffp, lsn, log);
 if (diffp >= log->nextsync)
  lsn = lmLogSync(log, 0);


 log->lsn = lsn;

 LOG_UNLOCK(log);


 return lsn;
}
