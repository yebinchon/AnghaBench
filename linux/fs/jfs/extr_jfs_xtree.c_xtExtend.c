
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int flag; int nextindex; int maxentry; } ;
struct TYPE_14__ {TYPE_1__ header; TYPE_4__* xad; } ;
typedef TYPE_3__ xtpage_t ;
struct TYPE_15__ {int flag; } ;
typedef TYPE_4__ xad_t ;
typedef int ulong ;
typedef int tid_t ;
struct xtsplit {int index; int flag; int len; int * pxdlist; scalar_t__ addr; scalar_t__ off; struct metapage* mp; } ;
struct TYPE_13__ {int offset; int length; } ;
struct xtlock {TYPE_2__ lwm; } ;
struct tlock {int lock; } ;
struct metapage {int dummy; } ;
struct inode {int i_sb; } ;
struct btstack {int top; } ;
typedef scalar_t__ s64 ;
typedef scalar_t__ s32 ;


 int ASSERT (int) ;
 int BT_INTERNAL ;
 int BT_MARK_DIRTY (struct metapage*,struct inode*) ;
 int COMMIT_Nolink ;
 int EIO ;
 scalar_t__ MAXXLEN ;
 int PSIZE ;
 int XAD_EXTENDED ;
 int XAD_NEW ;
 int XADlength (TYPE_4__*,scalar_t__) ;
 int XTENTRYSTART ;
 int XT_GETPAGE (struct inode*,scalar_t__,struct metapage*,int ,TYPE_3__*,int) ;
 int XT_GETSEARCH (struct inode*,int ,scalar_t__,struct metapage*,TYPE_3__*,int) ;
 int XT_INSERT ;
 int XT_PUTENTRY (TYPE_4__*,int,scalar_t__,int,scalar_t__) ;
 int XT_PUTPAGE (struct metapage*) ;
 scalar_t__ addressXAD (TYPE_4__*) ;
 int cpu_to_le16 (int) ;
 int jfs_error (int ,char*) ;
 int jfs_info (char*,int ,scalar_t__) ;
 int le16_add_cpu (int *,int) ;
 int le16_to_cpu (int ) ;
 scalar_t__ lengthXAD (TYPE_4__*) ;
 int min (int,int) ;
 scalar_t__ offsetXAD (TYPE_4__*) ;
 int test_cflag (int ,struct inode*) ;
 int tlckGROW ;
 int tlckXTREE ;
 struct tlock* txLock (int ,struct inode*,struct metapage*,int) ;
 int xtSearch (struct inode*,scalar_t__,int *,int*,struct btstack*,int ) ;
 int xtSplitUp (int ,struct inode*,struct xtsplit*,struct btstack*) ;

int xtExtend(tid_t tid,
      struct inode *ip, s64 xoff,
      s32 xlen,
      int flag)
{
 int rc = 0;
 int cmp;
 struct metapage *mp;
 xtpage_t *p;
 s64 bn;
 int index, nextindex, len;
 struct btstack btstack;
 struct xtsplit split;
 xad_t *xad;
 s64 xaddr;
 struct tlock *tlck;
 struct xtlock *xtlck = ((void*)0);

 jfs_info("xtExtend: nxoff:0x%lx nxlen:0x%x", (ulong) xoff, xlen);


 if ((rc = xtSearch(ip, xoff - 1, ((void*)0), &cmp, &btstack, XT_INSERT)))
  return rc;


 XT_GETSEARCH(ip, btstack.top, bn, mp, p, index);

 if (cmp != 0) {
  XT_PUTPAGE(mp);
  jfs_error(ip->i_sb, "xtSearch did not find extent\n");
  return -EIO;
 }


 xad = &p->xad[index];
 if ((offsetXAD(xad) + lengthXAD(xad)) != xoff) {
  XT_PUTPAGE(mp);
  jfs_error(ip->i_sb, "extension is not contiguous\n");
  return -EIO;
 }






 BT_MARK_DIRTY(mp, ip);
 if (!test_cflag(COMMIT_Nolink, ip)) {
  tlck = txLock(tid, ip, mp, tlckXTREE | tlckGROW);
  xtlck = (struct xtlock *) & tlck->lock;
 }


 xlen = lengthXAD(xad) + xlen;
 if ((len = xlen - MAXXLEN) <= 0)
  goto extendOld;





 xoff = offsetXAD(xad) + MAXXLEN;
 xaddr = addressXAD(xad) + MAXXLEN;
 nextindex = le16_to_cpu(p->header.nextindex);







 if (nextindex == le16_to_cpu(p->header.maxentry)) {

  split.mp = mp;
  split.index = index + 1;
  split.flag = XAD_NEW;
  split.off = xoff;
  split.len = len;
  split.addr = xaddr;
  split.pxdlist = ((void*)0);
  if ((rc = xtSplitUp(tid, ip, &split, &btstack)))
   return rc;


  XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
  if (rc)
   return rc;





  if (p->header.flag & BT_INTERNAL) {
   ASSERT(p->header.nextindex ==
          cpu_to_le16(XTENTRYSTART + 1));
   xad = &p->xad[XTENTRYSTART];
   bn = addressXAD(xad);
   XT_PUTPAGE(mp);


   XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
   if (rc)
    return rc;

   BT_MARK_DIRTY(mp, ip);
   if (!test_cflag(COMMIT_Nolink, ip)) {
    tlck = txLock(tid, ip, mp, tlckXTREE|tlckGROW);
    xtlck = (struct xtlock *) & tlck->lock;
   }
  }
 }



 else {

  xad = &p->xad[index + 1];
  XT_PUTENTRY(xad, XAD_NEW, xoff, len, xaddr);


  le16_add_cpu(&p->header.nextindex, 1);
 }


 xad = &p->xad[index];
 xlen = MAXXLEN;




      extendOld:
 XADlength(xad, xlen);
 if (!(xad->flag & XAD_NEW))
  xad->flag |= XAD_EXTENDED;

 if (!test_cflag(COMMIT_Nolink, ip)) {
  xtlck->lwm.offset =
      (xtlck->lwm.offset) ? min(index,
           (int)xtlck->lwm.offset) : index;
  xtlck->lwm.length =
      le16_to_cpu(p->header.nextindex) - xtlck->lwm.offset;
 }


 XT_PUTPAGE(mp);

 return rc;
}
