
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tid_t ;
struct tlock {int lock; } ;
struct pxdlist {int maxnpxd; int npxd; int * pxd; } ;
struct metapage {int dummy; } ;
struct lv {int length; scalar_t__ offset; } ;
struct jfs_sb_info {int bsize; int l2bsize; int nbperpage; int mntflag; int ipbmap; } ;
struct inode {int i_size; int i_sb; } ;
struct dtsplit {int nslot; int index; struct component_name* key; struct metapage* mp; struct pxdlist* pxdlist; TYPE_3__* data; } ;
struct dt_lock {scalar_t__ index; struct lv* lv; } ;
struct component_name {size_t namlen; int * name; int * member_1; int member_0; } ;
struct btstack {int nsplit; } ;
struct btframe {int index; int bn; } ;
typedef scalar_t__ s64 ;
typedef int pxd_t ;
struct TYPE_12__ {int flag; int freecnt; int nextindex; scalar_t__ stblindex; int prev; int self; } ;
struct TYPE_13__ {TYPE_1__ header; } ;
typedef TYPE_2__ dtpage_t ;
struct TYPE_14__ {int xd; } ;
typedef TYPE_3__ ddata_t ;


 int ASSERT (int) ;


 int BT_MARK_DIRTY (struct metapage*,struct inode*) ;
 struct btframe* BT_POP (struct btstack*) ;
 int BT_ROOT ;
 int BT_TYPE ;
 int DO_INDEX (struct inode*) ;
 scalar_t__ DTROOTMAXSLOT ;
 int DT_GETPAGE (struct inode*,int ,struct metapage*,int,TYPE_2__*,int) ;
 TYPE_2__* DT_PAGE (struct inode*,struct metapage*) ;
 int DT_PUTPAGE (struct metapage*) ;
 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ JFS_NAME_MAX ;
 int JFS_OS2 ;
 struct jfs_sb_info* JFS_SBI (int ) ;
 int L2DTSLOTSIZE ;
 int NDTINTERNAL (size_t) ;
 int PSIZE ;
 int PXDaddress (int *,scalar_t__) ;
 int PXDlength (int *,int) ;
 scalar_t__ addressPXD (int *) ;
 int ciGetLeafPrefixKey (TYPE_2__*,int ,TYPE_2__*,int ,struct component_name*,int) ;
 int ciToUpper (struct component_name*) ;
 int dbAlloc (struct inode*,int ,scalar_t__,scalar_t__*) ;
 int dbFree (struct inode*,scalar_t__,scalar_t__) ;
 int dbReAlloc (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__*) ;
 int dquot_alloc_block (struct inode*,int) ;
 int dquot_free_block (struct inode*,int) ;
 int dtExtendPage (int ,struct inode*,struct dtsplit*,struct btstack*) ;
 int dtGetKey (TYPE_2__*,int ,struct component_name*,int) ;
 int dtInsertEntry (TYPE_2__*,int,struct component_name*,TYPE_3__*,struct dt_lock**) ;
 int dtSplitPage (int ,struct inode*,struct dtsplit*,struct metapage**,TYPE_2__**,int *) ;
 int dtSplitRoot (int ,struct inode*,struct dtsplit*,struct metapage**) ;
 int jfs_err (char*) ;
 int kfree (int *) ;
 int * kmalloc_array (scalar_t__,int,int ) ;
 int lengthPXD (int *) ;
 int tlckDTREE ;
 int tlckENTRY ;
 struct tlock* txLock (int ,struct inode*,struct metapage*,int) ;

__attribute__((used)) static int dtSplitUp(tid_t tid,
   struct inode *ip, struct dtsplit * split, struct btstack * btstack)
{
 struct jfs_sb_info *sbi = JFS_SBI(ip->i_sb);
 int rc = 0;
 struct metapage *smp;
 dtpage_t *sp;
 struct metapage *rmp;
 dtpage_t *rp;
 pxd_t rpxd;
 struct metapage *lmp;
 dtpage_t *lp;
 int skip;
 struct btframe *parent;
 s64 xaddr, nxaddr;
 int xlen, xsize;
 struct pxdlist pxdlist;
 pxd_t *pxd;
 struct component_name key = { 0, ((void*)0) };
 ddata_t *data = split->data;
 int n;
 struct dt_lock *dtlck;
 struct tlock *tlck;
 struct lv *lv;
 int quota_allocation = 0;


 smp = split->mp;
 sp = DT_PAGE(ip, smp);

 key.name = kmalloc_array(JFS_NAME_MAX + 2, sizeof(wchar_t), GFP_NOFS);
 if (!key.name) {
  DT_PUTPAGE(smp);
  rc = -ENOMEM;
  goto dtSplitUp_Exit;
 }
 if (sp->header.flag & BT_ROOT) {



  xlen = 1;
  n = sbi->bsize >> L2DTSLOTSIZE;
  n -= (n + 31) >> L2DTSLOTSIZE;
  n -= DTROOTMAXSLOT - sp->header.freecnt;
  if (n <= split->nslot)
   xlen++;
  if ((rc = dbAlloc(ip, 0, (s64) xlen, &xaddr))) {
   DT_PUTPAGE(smp);
   goto freeKeyName;
  }

  pxdlist.maxnpxd = 1;
  pxdlist.npxd = 0;
  pxd = &pxdlist.pxd[0];
  PXDaddress(pxd, xaddr);
  PXDlength(pxd, xlen);
  split->pxdlist = &pxdlist;
  rc = dtSplitRoot(tid, ip, split, &rmp);

  if (rc)
   dbFree(ip, xaddr, xlen);
  else
   DT_PUTPAGE(rmp);

  DT_PUTPAGE(smp);

  if (!DO_INDEX(ip))
   ip->i_size = xlen << sbi->l2bsize;

  goto freeKeyName;
 }







 pxd = &sp->header.self;
 xlen = lengthPXD(pxd);
 xsize = xlen << sbi->l2bsize;
 if (xsize < PSIZE) {
  xaddr = addressPXD(pxd);
  n = xsize >> L2DTSLOTSIZE;
  n -= (n + 31) >> L2DTSLOTSIZE;
  if ((n + sp->header.freecnt) <= split->nslot)
   n = xlen + (xlen << 1);
  else
   n = xlen;


  rc = dquot_alloc_block(ip, n);
  if (rc)
   goto extendOut;
  quota_allocation += n;

  if ((rc = dbReAlloc(sbi->ipbmap, xaddr, (s64) xlen,
        (s64) n, &nxaddr)))
   goto extendOut;

  pxdlist.maxnpxd = 1;
  pxdlist.npxd = 0;
  pxd = &pxdlist.pxd[0];
  PXDaddress(pxd, nxaddr);
  PXDlength(pxd, xlen + n);
  split->pxdlist = &pxdlist;
  if ((rc = dtExtendPage(tid, ip, split, btstack))) {
   nxaddr = addressPXD(pxd);
   if (xaddr != nxaddr) {

    xlen = lengthPXD(pxd);
    dbFree(ip, nxaddr, (s64) xlen);
   } else {

    xlen = lengthPXD(pxd) - n;
    xaddr = addressPXD(pxd) + xlen;
    dbFree(ip, xaddr, (s64) n);
   }
  } else if (!DO_INDEX(ip))
   ip->i_size = lengthPXD(pxd) << sbi->l2bsize;


       extendOut:
  DT_PUTPAGE(smp);
  goto freeKeyName;
 }
 n = btstack->nsplit;
 pxdlist.maxnpxd = pxdlist.npxd = 0;
 xlen = sbi->nbperpage;
 for (pxd = pxdlist.pxd; n > 0; n--, pxd++) {
  if ((rc = dbAlloc(ip, 0, (s64) xlen, &xaddr)) == 0) {
   PXDaddress(pxd, xaddr);
   PXDlength(pxd, xlen);
   pxdlist.maxnpxd++;
   continue;
  }

  DT_PUTPAGE(smp);


  goto splitOut;
 }

 split->pxdlist = &pxdlist;
 if ((rc = dtSplitPage(tid, ip, split, &rmp, &rp, &rpxd))) {
  DT_PUTPAGE(smp);


  goto splitOut;
 }

 if (!DO_INDEX(ip))
  ip->i_size += PSIZE;
 while ((parent = BT_POP(btstack)) != ((void*)0)) {



  lmp = smp;
  lp = sp;





  DT_GETPAGE(ip, parent->bn, smp, PSIZE, sp, rc);
  if (rc) {
   DT_PUTPAGE(lmp);
   DT_PUTPAGE(rmp);
   goto splitOut;
  }





  skip = parent->index + 1;
  switch (rp->header.flag & BT_TYPE) {
  case 128:





   if ((sp->header.flag & BT_ROOT && skip > 1) ||
       sp->header.prev != 0 || skip > 1) {

    rc = ciGetLeafPrefixKey(lp,
       lp->header.nextindex-1,
       rp, 0, &key,
       sbi->mntflag);
    if (rc) {
     DT_PUTPAGE(lmp);
     DT_PUTPAGE(rmp);
     DT_PUTPAGE(smp);
     goto splitOut;
    }
   } else {




    dtGetKey(rp, 0, &key, sbi->mntflag);
    key.name[key.namlen] = 0;

    if ((sbi->mntflag & JFS_OS2) == JFS_OS2)
     ciToUpper(&key);
   }

   n = NDTINTERNAL(key.namlen);
   break;

  case 129:
   dtGetKey(rp, 0, &key, sbi->mntflag);
   n = NDTINTERNAL(key.namlen);
   break;

  default:
   jfs_err("dtSplitUp(): UFO!");
   break;
  }


  DT_PUTPAGE(lmp);




  data->xd = rpxd;




  if (n > sp->header.freecnt) {

   split->mp = smp;
   split->index = skip;
   split->nslot = n;
   split->key = &key;



   DT_PUTPAGE(rmp);





   rc = (sp->header.flag & BT_ROOT) ?
       dtSplitRoot(tid, ip, split, &rmp) :
       dtSplitPage(tid, ip, split, &rmp, &rp, &rpxd);
   if (rc) {
    DT_PUTPAGE(smp);
    goto splitOut;
   }


  }



  else {
   BT_MARK_DIRTY(smp, ip);



   tlck = txLock(tid, ip, smp, tlckDTREE | tlckENTRY);
   dtlck = (struct dt_lock *) & tlck->lock;
   ASSERT(dtlck->index == 0);
   lv = & dtlck->lv[0];


   lv->offset = 0;
   lv->length = 1;
   dtlck->index++;


   if (!(sp->header.flag & BT_ROOT)) {
    lv++;
    n = skip >> L2DTSLOTSIZE;
    lv->offset = sp->header.stblindex + n;
    lv->length =
        ((sp->header.nextindex -
          1) >> L2DTSLOTSIZE) - n + 1;
    dtlck->index++;
   }

   dtInsertEntry(sp, skip, &key, data, &dtlck);


   break;
  }
 }


 DT_PUTPAGE(smp);
 DT_PUTPAGE(rmp);




      splitOut:
 n = pxdlist.npxd;
 pxd = &pxdlist.pxd[n];
 for (; n < pxdlist.maxnpxd; n++, pxd++)
  dbFree(ip, addressPXD(pxd), (s64) lengthPXD(pxd));

      freeKeyName:
 kfree(key.name);


 if (rc && quota_allocation)
  dquot_free_block(ip, quota_allocation);

      dtSplitUp_Exit:

 return rc;
}
