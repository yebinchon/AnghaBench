
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint ;
typedef size_t u8 ;
typedef int tid_t ;
struct tlock {int lock; } ;
struct super_block {int dummy; } ;
struct pxdlist {size_t npxd; int * pxd; } ;
struct pxd_lock {int index; int pxd; int flag; } ;
struct metapage {int dummy; } ;
struct lv {int offset; int length; } ;
struct ldtentry {int index; } ;
struct inode {struct super_block* i_sb; } ;
struct dtsplit {int data; int key; int index; struct pxdlist* pxdlist; struct metapage* mp; } ;
struct dtslot {int next; } ;
struct dt_lock {size_t index; struct lv* lv; } ;
struct btstack {int dummy; } ;
struct btframe {int bn; } ;
typedef scalar_t__ s64 ;
typedef int pxd_t ;
struct TYPE_10__ {int nextindex; int stblindex; int maxslot; int freelist; int freecnt; int self; } ;
struct TYPE_11__ {struct dtslot* slot; TYPE_1__ header; } ;
typedef TYPE_2__ dtpage_t ;
struct TYPE_12__ {int l2bsize; } ;


 int BT_MARK_DIRTY (struct metapage*,struct inode*) ;
 struct btframe* BT_POP (struct btstack*) ;
 scalar_t__ DO_INDEX (struct inode*) ;
 int DT_GETPAGE (struct inode*,int ,struct metapage*,int ,TYPE_2__*,int) ;
 size_t* DT_GETSTBL (TYPE_2__*) ;
 TYPE_2__* DT_PAGE (struct inode*,struct metapage*) ;
 int DT_PUTPAGE (struct metapage*) ;
 TYPE_6__* JFS_SBI (struct super_block*) ;
 int L2DTSLOTSIZE ;
 int PSIZE ;
 scalar_t__ addressPXD (int *) ;
 int dtInsertEntry (TYPE_2__*,int ,int ,int ,struct dt_lock**) ;
 int dtLinelockFreelist (TYPE_2__*,int,struct dt_lock**) ;
 int jfs_info (char*,struct inode*,struct metapage*,TYPE_2__*) ;
 int le32_to_cpu (int ) ;
 int lengthPXD (int *) ;
 int memcpy (struct dtslot*,struct dtslot*,int) ;
 int mlckFREEPXD ;
 int modify_index (int ,struct inode*,int ,scalar_t__,int,struct metapage**,scalar_t__*) ;
 int release_metapage (struct metapage*) ;
 int tlckDTREE ;
 int tlckENTRY ;
 int tlckEXTEND ;
 int tlckNEW ;
 int tlckRELOCATE ;
 struct tlock* txLock (int ,struct inode*,struct metapage*,int) ;
 struct tlock* txMaplock (int ,struct inode*,int) ;

__attribute__((used)) static int dtExtendPage(tid_t tid,
      struct inode *ip, struct dtsplit * split, struct btstack * btstack)
{
 struct super_block *sb = ip->i_sb;
 int rc;
 struct metapage *smp, *pmp, *mp;
 dtpage_t *sp, *pp;
 struct pxdlist *pxdlist;
 pxd_t *pxd, *tpxd;
 int xlen, xsize;
 int newstblindex, newstblsize;
 int oldstblindex, oldstblsize;
 int fsi, last;
 struct dtslot *f;
 struct btframe *parent;
 int n;
 struct dt_lock *dtlck;
 s64 xaddr, txaddr;
 struct tlock *tlck;
 struct pxd_lock *pxdlock;
 struct lv *lv;
 uint type;
 struct ldtentry *ldtentry;
 u8 *stbl;


 smp = split->mp;
 sp = DT_PAGE(ip, smp);


 parent = BT_POP(btstack);
 DT_GETPAGE(ip, parent->bn, pmp, PSIZE, pp, rc);
 if (rc)
  return (rc);




 pxdlist = split->pxdlist;
 pxd = &pxdlist->pxd[pxdlist->npxd];
 pxdlist->npxd++;

 xaddr = addressPXD(pxd);
 tpxd = &sp->header.self;
 txaddr = addressPXD(tpxd);

 if (xaddr == txaddr) {
  type = tlckEXTEND;
 }

 else {
  type = tlckNEW;


  tlck = txMaplock(tid, ip, tlckDTREE | tlckRELOCATE);
  pxdlock = (struct pxd_lock *) & tlck->lock;
  pxdlock->flag = mlckFREEPXD;
  pxdlock->pxd = sp->header.self;
  pxdlock->index = 1;




  if (DO_INDEX(ip)) {
   s64 lblock;

   mp = ((void*)0);
   stbl = DT_GETSTBL(sp);
   for (n = 0; n < sp->header.nextindex; n++) {
    ldtentry =
        (struct ldtentry *) & sp->slot[stbl[n]];
    modify_index(tid, ip,
          le32_to_cpu(ldtentry->index),
          xaddr, n, &mp, &lblock);
   }
   if (mp)
    release_metapage(mp);
  }
 }




 sp->header.self = *pxd;

 jfs_info("dtExtendPage: ip:0x%p smp:0x%p sp:0x%p", ip, smp, sp);

 BT_MARK_DIRTY(smp, ip);



 tlck = txLock(tid, ip, smp, tlckDTREE | type);
 dtlck = (struct dt_lock *) & tlck->lock;
 lv = & dtlck->lv[0];


 xlen = lengthPXD(pxd);
 xsize = xlen << JFS_SBI(sb)->l2bsize;




 oldstblindex = sp->header.stblindex;
 oldstblsize = (sp->header.maxslot + 31) >> L2DTSLOTSIZE;
 newstblindex = sp->header.maxslot;
 n = xsize >> L2DTSLOTSIZE;
 newstblsize = (n + 31) >> L2DTSLOTSIZE;
 memcpy(&sp->slot[newstblindex], &sp->slot[oldstblindex],
        sp->header.nextindex);




 if (type == tlckEXTEND) {

  lv->offset = 0;
  lv->length = 1;
  dtlck->index++;
  lv++;


  lv->offset = newstblindex;
  lv->length = newstblsize;
 }



 else {
  lv->offset = 0;
  lv->length = sp->header.maxslot + newstblsize;
 }

 dtlck->index++;

 sp->header.maxslot = n;
 sp->header.stblindex = newstblindex;





 fsi = oldstblindex;
 f = &sp->slot[fsi];
 last = sp->header.freelist;
 for (n = 0; n < oldstblsize; n++, fsi++, f++) {
  f->next = last;
  last = fsi;
 }
 sp->header.freelist = last;
 sp->header.freecnt += oldstblsize;





 fsi = n = newstblindex + newstblsize;
 f = &sp->slot[fsi];
 for (fsi++; fsi < sp->header.maxslot; f++, fsi++)
  f->next = fsi;
 f->next = -1;


 fsi = sp->header.freelist;
 if (fsi == -1)
  sp->header.freelist = n;
 else {
  do {
   f = &sp->slot[fsi];
   fsi = f->next;
  } while (fsi != -1);

  f->next = n;
 }

 sp->header.freecnt += sp->header.maxslot - n;




 dtInsertEntry(sp, split->index, split->key, split->data, &dtlck);

 BT_MARK_DIRTY(pmp, ip);



 if (type == tlckEXTEND) {
  n = sp->header.maxslot >> 2;
  if (sp->header.freelist < n)
   dtLinelockFreelist(sp, n, &dtlck);
 }







 tlck = txLock(tid, ip, pmp, tlckDTREE | tlckENTRY);
 dtlck = (struct dt_lock *) & tlck->lock;
 lv = & dtlck->lv[dtlck->index];


 lv->offset = 1;
 lv->length = 1;
 dtlck->index++;


 tpxd = (pxd_t *) & pp->slot[1];
 *tpxd = *pxd;

 DT_PUTPAGE(pmp);
 return 0;
}
