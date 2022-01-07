
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int flag; void* nextindex; void* maxentry; void* prev; void* next; int self; } ;
struct TYPE_10__ {TYPE_2__ header; int * xad; } ;
typedef TYPE_3__ xtpage_t ;
typedef int xad_t ;
typedef int tid_t ;
struct xtsplit {int index; int addr; int len; int off; int flag; struct pxdlist* pxdlist; struct metapage* mp; } ;
struct TYPE_8__ {size_t offset; int length; } ;
struct xtlock {TYPE_1__ lwm; } ;
struct tlock {int lock; } ;
struct pxdlist {size_t npxd; int * pxd; } ;
struct metapage {scalar_t__ data; } ;
struct inode {int dummy; } ;
typedef scalar_t__ s64 ;
typedef int pxd_t ;
struct TYPE_11__ {int split; } ;


 int BT_MARK_DIRTY (struct metapage*,struct inode*) ;
 int BT_TYPE ;
 int COMMIT_Nolink ;
 int EIO ;
 int INCREMENT (int ) ;
 int L2XTSLOTSIZE ;
 int PSIZE ;
 size_t XTENTRYSTART ;
 int XT_GETPAGE (struct inode*,scalar_t__,struct metapage*,int ,TYPE_3__*,int) ;
 TYPE_3__* XT_PAGE (struct inode*,struct metapage*) ;
 int XT_PUTENTRY (int *,int ,int ,int ,int ) ;
 int XT_PUTPAGE (struct metapage*) ;
 scalar_t__ addressPXD (int *) ;
 void* cpu_to_le16 (size_t) ;
 void* cpu_to_le64 (scalar_t__) ;
 int dquot_alloc_block (struct inode*,scalar_t__) ;
 int dquot_free_block (struct inode*,int) ;
 struct metapage* get_metapage (struct inode*,scalar_t__,int ,int) ;
 int jfs_info (char*,TYPE_3__*,...) ;
 size_t le16_to_cpu (void*) ;
 scalar_t__ le64_to_cpu (void*) ;
 scalar_t__ lengthPXD (int *) ;
 int memmove (int *,int *,int) ;
 int min (int,int) ;
 int test_cflag (int ,struct inode*) ;
 int tlckGROW ;
 int tlckNEW ;
 int tlckRELINK ;
 int tlckXTREE ;
 struct tlock* txLock (int ,struct inode*,struct metapage*,int) ;
 TYPE_4__ xtStat ;

__attribute__((used)) static int
xtSplitPage(tid_t tid, struct inode *ip,
     struct xtsplit * split, struct metapage ** rmpp, s64 * rbnp)
{
 int rc = 0;
 struct metapage *smp;
 xtpage_t *sp;
 struct metapage *rmp;
 xtpage_t *rp;
 s64 rbn;
 struct metapage *mp;
 xtpage_t *p;
 s64 nextbn;
 int skip, maxentry, middle, righthalf, n;
 xad_t *xad;
 struct pxdlist *pxdlist;
 pxd_t *pxd;
 struct tlock *tlck;
 struct xtlock *sxtlck = ((void*)0), *rxtlck = ((void*)0);
 int quota_allocation = 0;

 smp = split->mp;
 sp = XT_PAGE(ip, smp);

 INCREMENT(xtStat.split);

 pxdlist = split->pxdlist;
 pxd = &pxdlist->pxd[pxdlist->npxd];
 pxdlist->npxd++;
 rbn = addressPXD(pxd);


 rc = dquot_alloc_block(ip, lengthPXD(pxd));
 if (rc)
  goto clean_up;

 quota_allocation += lengthPXD(pxd);




 rmp = get_metapage(ip, rbn, PSIZE, 1);
 if (rmp == ((void*)0)) {
  rc = -EIO;
  goto clean_up;
 }

 jfs_info("xtSplitPage: ip:0x%p smp:0x%p rmp:0x%p", ip, smp, rmp);

 BT_MARK_DIRTY(rmp, ip);




 rp = (xtpage_t *) rmp->data;
 rp->header.self = *pxd;
 rp->header.flag = sp->header.flag & BT_TYPE;
 rp->header.maxentry = sp->header.maxentry;
 rp->header.nextindex = cpu_to_le16(XTENTRYSTART);

 BT_MARK_DIRTY(smp, ip);

 if (!test_cflag(COMMIT_Nolink, ip)) {



  tlck = txLock(tid, ip, rmp, tlckXTREE | tlckNEW);
  rxtlck = (struct xtlock *) & tlck->lock;
  rxtlck->lwm.offset = XTENTRYSTART;



  tlck = txLock(tid, ip, smp, tlckXTREE | tlckGROW);
  sxtlck = (struct xtlock *) & tlck->lock;
 }




 nextbn = le64_to_cpu(sp->header.next);
 rp->header.next = cpu_to_le64(nextbn);
 rp->header.prev = cpu_to_le64(addressPXD(&sp->header.self));
 sp->header.next = cpu_to_le64(rbn);

 skip = split->index;
 if (nextbn == 0 && skip == le16_to_cpu(sp->header.maxentry)) {






  xad = &rp->xad[XTENTRYSTART];
  XT_PUTENTRY(xad, split->flag, split->off, split->len,
       split->addr);

  rp->header.nextindex = cpu_to_le16(XTENTRYSTART + 1);

  if (!test_cflag(COMMIT_Nolink, ip)) {

   rxtlck->lwm.length = 1;
  }

  *rmpp = rmp;
  *rbnp = rbn;

  jfs_info("xtSplitPage: sp:0x%p rp:0x%p", sp, rp);
  return 0;
 }
 if (nextbn != 0) {
  XT_GETPAGE(ip, nextbn, mp, PSIZE, p, rc);
  if (rc) {
   XT_PUTPAGE(rmp);
   goto clean_up;
  }

  BT_MARK_DIRTY(mp, ip);





  if (!test_cflag(COMMIT_Nolink, ip))
   tlck = txLock(tid, ip, mp, tlckXTREE | tlckRELINK);

  p->header.prev = cpu_to_le64(rbn);





  XT_PUTPAGE(mp);
 }




 maxentry = le16_to_cpu(sp->header.maxentry);
 middle = maxentry >> 1;
 righthalf = maxentry - middle;




 if (skip <= middle) {

  memmove(&rp->xad[XTENTRYSTART], &sp->xad[middle],
   righthalf << L2XTSLOTSIZE);


  if (skip < middle)
   memmove(&sp->xad[skip + 1], &sp->xad[skip],
    (middle - skip) << L2XTSLOTSIZE);


  xad = &sp->xad[skip];
  XT_PUTENTRY(xad, split->flag, split->off, split->len,
       split->addr);


  sp->header.nextindex = cpu_to_le16(middle + 1);
  if (!test_cflag(COMMIT_Nolink, ip)) {
   sxtlck->lwm.offset = (sxtlck->lwm.offset) ?
       min(skip, (int)sxtlck->lwm.offset) : skip;
  }

  rp->header.nextindex =
      cpu_to_le16(XTENTRYSTART + righthalf);
 }



 else {

  n = skip - middle;
  memmove(&rp->xad[XTENTRYSTART], &sp->xad[middle],
   n << L2XTSLOTSIZE);


  n += XTENTRYSTART;
  xad = &rp->xad[n];
  XT_PUTENTRY(xad, split->flag, split->off, split->len,
       split->addr);


  if (skip < maxentry)
   memmove(&rp->xad[n + 1], &sp->xad[skip],
    (maxentry - skip) << L2XTSLOTSIZE);


  sp->header.nextindex = cpu_to_le16(middle);
  if (!test_cflag(COMMIT_Nolink, ip)) {
   sxtlck->lwm.offset = (sxtlck->lwm.offset) ?
       min(middle, (int)sxtlck->lwm.offset) : middle;
  }

  rp->header.nextindex = cpu_to_le16(XTENTRYSTART +
         righthalf + 1);
 }

 if (!test_cflag(COMMIT_Nolink, ip)) {
  sxtlck->lwm.length = le16_to_cpu(sp->header.nextindex) -
      sxtlck->lwm.offset;


  rxtlck->lwm.length = le16_to_cpu(rp->header.nextindex) -
      XTENTRYSTART;
 }

 *rmpp = rmp;
 *rbnp = rbn;

 jfs_info("xtSplitPage: sp:0x%p rp:0x%p", sp, rp);
 return rc;

      clean_up:


 if (quota_allocation)
  dquot_free_block(ip, quota_allocation);

 return (rc);
}
