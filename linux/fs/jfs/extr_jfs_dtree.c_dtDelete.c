
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef int tid_t ;
struct tlock {int lock; } ;
struct metapage {int dummy; } ;
struct lv {int length; scalar_t__ offset; } ;
struct ldtentry {int index; } ;
struct inode {int dummy; } ;
struct dt_lock {size_t index; size_t maxcnt; struct lv* lv; } ;
struct component_name {int dummy; } ;
struct btstack {int top; } ;
typedef int s64 ;
typedef int ino_t ;
struct TYPE_8__ {int nextindex; int flag; scalar_t__ next; scalar_t__ stblindex; } ;
struct TYPE_9__ {int * slot; TYPE_1__ header; } ;
typedef TYPE_2__ dtpage_t ;


 int BT_MARK_DIRTY (struct metapage*,struct inode*) ;
 int BT_ROOT ;
 scalar_t__ DO_INDEX (struct inode*) ;
 int DT_GETPAGE (struct inode*,int ,struct metapage*,int ,TYPE_2__*,int) ;
 int DT_GETSEARCH (struct inode*,int ,int ,struct metapage*,TYPE_2__*,int) ;
 size_t* DT_GETSTBL (TYPE_2__*) ;
 int DT_PUTPAGE (struct metapage*) ;
 int L2DTSLOTSIZE ;
 int PSIZE ;
 int dtDeleteEntry (TYPE_2__*,int,struct dt_lock**) ;
 int dtDeleteUp (int ,struct inode*,struct metapage*,TYPE_2__*,struct btstack*) ;
 int dtSearch (struct inode*,struct component_name*,int *,struct btstack*,int) ;
 int free_index (int ,struct inode*,int,int) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (scalar_t__) ;
 int modify_index (int ,struct inode*,int,int ,int,struct metapage**,int *) ;
 int release_metapage (struct metapage*) ;
 int tlckDTREE ;
 int tlckENTRY ;
 scalar_t__ txLinelock (struct dt_lock*) ;
 struct tlock* txLock (int ,struct inode*,struct metapage*,int) ;

int dtDelete(tid_t tid,
  struct inode *ip, struct component_name * key, ino_t * ino, int flag)
{
 int rc = 0;
 s64 bn;
 struct metapage *mp, *imp;
 dtpage_t *p;
 int index;
 struct btstack btstack;
 struct dt_lock *dtlck;
 struct tlock *tlck;
 struct lv *lv;
 int i;
 struct ldtentry *ldtentry;
 u8 *stbl;
 u32 table_index, next_index;
 struct metapage *nmp;
 dtpage_t *np;






 if ((rc = dtSearch(ip, key, ino, &btstack, flag)))
  return rc;


 DT_GETSEARCH(ip, btstack.top, bn, mp, p, index);






 if (DO_INDEX(ip)) {
  stbl = DT_GETSTBL(p);
  ldtentry = (struct ldtentry *) & p->slot[stbl[index]];
  table_index = le32_to_cpu(ldtentry->index);
  if (index == (p->header.nextindex - 1)) {



   if ((p->header.flag & BT_ROOT)
       || (p->header.next == 0))
    next_index = -1;
   else {

    DT_GETPAGE(ip, le64_to_cpu(p->header.next),
        nmp, PSIZE, np, rc);
    if (rc)
     next_index = -1;
    else {
     stbl = DT_GETSTBL(np);
     ldtentry =
         (struct ldtentry *) & np->
         slot[stbl[0]];
     next_index =
         le32_to_cpu(ldtentry->index);
     DT_PUTPAGE(nmp);
    }
   }
  } else {
   ldtentry =
       (struct ldtentry *) & p->slot[stbl[index + 1]];
   next_index = le32_to_cpu(ldtentry->index);
  }
  free_index(tid, ip, table_index, next_index);
 }



 if (p->header.nextindex == 1) {

  rc = dtDeleteUp(tid, ip, mp, p, &btstack);
 }





 else {
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
   if (dtlck->index >= dtlck->maxcnt)
    dtlck = (struct dt_lock *) txLinelock(dtlck);
   lv = & dtlck->lv[dtlck->index];
   i = index >> L2DTSLOTSIZE;
   lv->offset = p->header.stblindex + i;
   lv->length =
       ((p->header.nextindex - 1) >> L2DTSLOTSIZE) -
       i + 1;
   dtlck->index++;
  }


  dtDeleteEntry(p, index, &dtlck);




  if (DO_INDEX(ip) && index < p->header.nextindex) {
   s64 lblock;

   imp = ((void*)0);
   stbl = DT_GETSTBL(p);
   for (i = index; i < p->header.nextindex; i++) {
    ldtentry =
        (struct ldtentry *) & p->slot[stbl[i]];
    modify_index(tid, ip,
          le32_to_cpu(ldtentry->index),
          bn, i, &imp, &lblock);
   }
   if (imp)
    release_metapage(imp);
  }

  DT_PUTPAGE(mp);
 }

 return rc;
}
