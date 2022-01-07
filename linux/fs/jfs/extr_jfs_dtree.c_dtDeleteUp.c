
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tid_t ;
struct tlock {int lock; } ;
struct pxd_lock {int index; int pxd; void* flag; } ;
struct metapage {int dummy; } ;
struct lv {int length; scalar_t__ offset; } ;
struct inode {int i_size; } ;
struct dt_lock {size_t index; size_t maxcnt; struct lv* lv; } ;
struct btstack {int dummy; } ;
struct btframe {int index; int bn; } ;
struct TYPE_8__ {int nextindex; int flag; scalar_t__ prev; scalar_t__ stblindex; int self; } ;
struct TYPE_9__ {TYPE_1__ header; } ;
typedef TYPE_2__ dtpage_t ;


 scalar_t__ BT_IS_ROOT (struct metapage*) ;
 int BT_MARK_DIRTY (struct metapage*,struct inode*) ;
 struct btframe* BT_POP (struct btstack*) ;
 int BT_PUTPAGE (struct metapage*) ;
 int BT_ROOT ;
 int DO_INDEX (struct inode*) ;
 int DT_GETPAGE (struct inode*,int ,struct metapage*,scalar_t__,TYPE_2__*,int) ;
 int DT_PUTPAGE (struct metapage*) ;
 int L2DTSLOTSIZE ;
 int PARENT (struct inode*) ;
 scalar_t__ PSIZE ;
 int discard_metapage (struct metapage*) ;
 int dquot_free_block (struct inode*,int) ;
 int dtDeleteEntry (TYPE_2__*,int,struct dt_lock**) ;
 int dtInitRoot (int ,struct inode*,int ) ;
 int dtRelink (int ,struct inode*,TYPE_2__*) ;
 int dtTruncateEntry (TYPE_2__*,int ,struct dt_lock**) ;
 int lengthPXD (int *) ;
 void* mlckFREEPXD ;
 int tlckDTREE ;
 int tlckENTRY ;
 int tlckFREE ;
 scalar_t__ txLinelock (struct dt_lock*) ;
 struct tlock* txLock (int ,struct inode*,struct metapage*,int) ;
 struct tlock* txMaplock (int ,struct inode*,int) ;

__attribute__((used)) static int dtDeleteUp(tid_t tid, struct inode *ip,
    struct metapage * fmp, dtpage_t * fp, struct btstack * btstack)
{
 int rc = 0;
 struct metapage *mp;
 dtpage_t *p;
 int index, nextindex;
 int xlen;
 struct btframe *parent;
 struct dt_lock *dtlck;
 struct tlock *tlck;
 struct lv *lv;
 struct pxd_lock *pxdlock;
 int i;




 if (BT_IS_ROOT(fmp)) {





  dtInitRoot(tid, ip, PARENT(ip));

  DT_PUTPAGE(fmp);

  return 0;
 }
 tlck = txMaplock(tid, ip, tlckDTREE | tlckFREE);
 pxdlock = (struct pxd_lock *) & tlck->lock;
 pxdlock->flag = mlckFREEPXD;
 pxdlock->pxd = fp->header.self;
 pxdlock->index = 1;


 if ((rc = dtRelink(tid, ip, fp))) {
  BT_PUTPAGE(fmp);
  return rc;
 }

 xlen = lengthPXD(&fp->header.self);


 dquot_free_block(ip, xlen);


 discard_metapage(fmp);
 while ((parent = BT_POP(btstack)) != ((void*)0)) {

  DT_GETPAGE(ip, parent->bn, mp, PSIZE, p, rc);
  if (rc)
   return rc;




  index = parent->index;




  nextindex = p->header.nextindex;






  if (nextindex == 1) {



   if (p->header.flag & BT_ROOT) {





    dtInitRoot(tid, ip, PARENT(ip));

    DT_PUTPAGE(mp);

    return 0;
   }



   else {





    tlck =
        txMaplock(tid, ip,
           tlckDTREE | tlckFREE);
    pxdlock = (struct pxd_lock *) & tlck->lock;
    pxdlock->flag = mlckFREEPXD;
    pxdlock->pxd = p->header.self;
    pxdlock->index = 1;


    if ((rc = dtRelink(tid, ip, p))) {
     DT_PUTPAGE(mp);
     return rc;
    }

    xlen = lengthPXD(&p->header.self);


    dquot_free_block(ip, xlen);


    discard_metapage(mp);


    continue;
   }
  }






  BT_MARK_DIRTY(mp, ip);





  tlck = txLock(tid, ip, mp, tlckDTREE | tlckENTRY);
  dtlck = (struct dt_lock *) & tlck->lock;


  if (dtlck->index >= dtlck->maxcnt)
   dtlck = (struct dt_lock *) txLinelock(dtlck);
  lv = & dtlck->lv[dtlck->index];
  lv->offset = 0;
  lv->length = 1;
  dtlck->index++;


  if (!(p->header.flag & BT_ROOT)) {
   if (dtlck->index < dtlck->maxcnt)
    lv++;
   else {
    dtlck = (struct dt_lock *) txLinelock(dtlck);
    lv = & dtlck->lv[0];
   }
   i = index >> L2DTSLOTSIZE;
   lv->offset = p->header.stblindex + i;
   lv->length =
       ((p->header.nextindex - 1) >> L2DTSLOTSIZE) -
       i + 1;
   dtlck->index++;
  }


  dtDeleteEntry(p, index, &dtlck);


  if (index == 0 &&
      ((p->header.flag & BT_ROOT) || p->header.prev == 0))
   dtTruncateEntry(p, 0, &dtlck);


  DT_PUTPAGE(mp);


  break;
 }

 if (!DO_INDEX(ip))
  ip->i_size -= PSIZE;

 return 0;
}
