
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbuf {int l_flag; int l_pn; int l_ioevent; struct lbuf* l_wqnext; scalar_t__ l_ceor; struct jfs_log* l_log; } ;
struct jfs_log {struct lbuf* wqueue; scalar_t__ clsn; } ;
struct bio {scalar_t__ bi_status; struct lbuf* bi_private; } ;
struct TYPE_2__ {int pagedone; } ;


 int INCREMENT (int ) ;
 int L2LOGPSIZE ;
 int LCACHE_LOCK (unsigned long) ;
 int LCACHE_UNLOCK (unsigned long) ;
 int LCACHE_WAKEUP (int *) ;
 int assert (int) ;
 int bio_put (struct bio*) ;
 int jfs_err (char*) ;
 int jfs_info (char*,struct lbuf*,int) ;
 int lbmDIRECT ;
 int lbmDONE ;
 int lbmERROR ;
 int lbmFREE ;
 int lbmGC ;
 int lbmREAD ;
 int lbmRELEASE ;
 int lbmRedrive (struct lbuf*) ;
 int lbmSYNC ;
 int lbmWRITE ;
 int lbmfree (struct lbuf*) ;
 int lmPostGC (struct lbuf*) ;
 TYPE_1__ lmStat ;

__attribute__((used)) static void lbmIODone(struct bio *bio)
{
 struct lbuf *bp = bio->bi_private;
 struct lbuf *nextbp, *tail;
 struct jfs_log *log;
 unsigned long flags;




 jfs_info("lbmIODone: bp:0x%p flag:0x%x", bp, bp->l_flag);

 LCACHE_LOCK(flags);

 bp->l_flag |= lbmDONE;

 if (bio->bi_status) {
  bp->l_flag |= lbmERROR;

  jfs_err("lbmIODone: I/O error in JFS log");
 }

 bio_put(bio);




 if (bp->l_flag & lbmREAD) {
  bp->l_flag &= ~lbmREAD;

  LCACHE_UNLOCK(flags);


  LCACHE_WAKEUP(&bp->l_ioevent);

  return;
 }
 bp->l_flag &= ~lbmWRITE;
 INCREMENT(lmStat.pagedone);


 log = bp->l_log;
 log->clsn = (bp->l_pn << L2LOGPSIZE) + bp->l_ceor;

 if (bp->l_flag & lbmDIRECT) {
  LCACHE_WAKEUP(&bp->l_ioevent);
  LCACHE_UNLOCK(flags);
  return;
 }

 tail = log->wqueue;


 if (bp == tail) {



  if (bp->l_flag & lbmRELEASE) {
   log->wqueue = ((void*)0);
   bp->l_wqnext = ((void*)0);
  }
 }

 else {



  if (bp->l_flag & lbmRELEASE) {
   nextbp = tail->l_wqnext = bp->l_wqnext;
   bp->l_wqnext = ((void*)0);
   if (nextbp->l_flag & lbmWRITE) {




    lbmRedrive(nextbp);
   }
  }
 }
 if (bp->l_flag & lbmSYNC) {
  LCACHE_UNLOCK(flags);


  LCACHE_WAKEUP(&bp->l_ioevent);
 }




 else if (bp->l_flag & lbmGC) {
  LCACHE_UNLOCK(flags);
  lmPostGC(bp);
 }







 else {
  assert(bp->l_flag & lbmRELEASE);
  assert(bp->l_flag & lbmFREE);
  lbmfree(bp);

  LCACHE_UNLOCK(flags);
 }
}
