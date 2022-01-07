
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int nextindex; } ;
struct TYPE_10__ {TYPE_1__ header; TYPE_4__* xad; } ;
typedef TYPE_3__ xtpage_t ;
struct TYPE_11__ {int flag; } ;
typedef TYPE_4__ xad_t ;
typedef int uint ;
typedef int u32 ;
typedef int tid_t ;
struct tlock {int type; int lock; struct metapage* mp; } ;
struct metapage {scalar_t__ data; } ;
struct lv {size_t offset; int length; } ;
struct linelock {int index; struct lv* lv; } ;
struct jfs_sb_info {unsigned long l2nbperpage; int nbperpage; int l2niperblk; } ;
struct jfs_inode_info {TYPE_4__ i_dirtable; TYPE_4__* i_inline_ea; TYPE_4__* i_inline; int i_dtroot; TYPE_3__ i_xtroot; scalar_t__ blid; scalar_t__ xtlid; int ixpxd; TYPE_2__* i_imap; struct inode* ipimap; } ;
struct inode {int i_ino; int i_size; int i_mode; int i_sb; } ;
struct dinode {TYPE_4__ di_dirtable; TYPE_4__ di_inlineea; TYPE_4__ di_fastsymlink; int di_dtroot; TYPE_3__ di_xtroot; } ;
typedef unsigned long s64 ;
typedef int s32 ;
typedef scalar_t__ lid_t ;
struct TYPE_12__ {TYPE_4__* slot; } ;
typedef TYPE_5__ dtpage_t ;
struct TYPE_9__ {scalar_t__ im_nbperiext; } ;


 int COMMIT_Dirtable ;
 int COMMIT_Inlineea ;
 int EIO ;
 int IDATASIZE ;
 int INODESLOTSIZE ;
 unsigned long INOPBLK (int *,int,unsigned long) ;
 int INOSPERIAG ;
 int INOSPERPAGE ;
 struct jfs_inode_info* JFS_IP (struct inode*) ;
 struct jfs_sb_info* JFS_SBI (int ) ;
 int L2DISIZE ;
 int L2DTSLOTSIZE ;
 int L2INODESLOTSIZE ;
 int L2XTSLOTSIZE ;
 int PSIZE ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int XAD_EXTENDED ;
 int XAD_NEW ;
 size_t XTENTRYSTART ;
 int addressPXD (int *) ;
 int assert (int) ;
 int clear_cflag (int ,struct inode*) ;
 int copy_to_dinode (struct dinode*,struct inode*) ;
 int jfs_err (char*) ;
 int jfs_error (int ,char*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ lengthPXD (int *) ;
 struct tlock* lid_to_tlock (scalar_t__) ;
 int memcpy (TYPE_4__*,TYPE_4__*,int) ;
 struct metapage* read_metapage (struct inode*,unsigned long,int ,int) ;
 scalar_t__ test_and_clear_cflag (int ,struct inode*) ;
 scalar_t__ test_cflag (int ,struct inode*) ;
 int tlckBTROOT ;
 int tlckDTREE ;
 int tlckENTRY ;
 int tlckINODE ;
 int tlckXTREE ;
 struct tlock* txLock (int ,struct inode*,struct metapage*,int) ;
 int write_metapage (struct metapage*) ;

int diWrite(tid_t tid, struct inode *ip)
{
 struct jfs_sb_info *sbi = JFS_SBI(ip->i_sb);
 struct jfs_inode_info *jfs_ip = JFS_IP(ip);
 int rc = 0;
 s32 ino;
 struct dinode *dp;
 s64 blkno;
 int block_offset;
 int inodes_left;
 struct metapage *mp;
 unsigned long pageno;
 int rel_inode;
 int dioffset;
 struct inode *ipimap;
 uint type;
 lid_t lid;
 struct tlock *ditlck, *tlck;
 struct linelock *dilinelock, *ilinelock;
 struct lv *lv;
 int n;

 ipimap = jfs_ip->ipimap;

 ino = ip->i_ino & (INOSPERIAG - 1);

 if (!addressPXD(&(jfs_ip->ixpxd)) ||
     (lengthPXD(&(jfs_ip->ixpxd)) !=
      JFS_IP(ipimap)->i_imap->im_nbperiext)) {
  jfs_error(ip->i_sb, "ixpxd invalid\n");
  return -EIO;
 }





 blkno = INOPBLK(&(jfs_ip->ixpxd), ino, sbi->l2nbperpage);

 rel_inode = (ino & (INOSPERPAGE - 1));
 pageno = blkno >> sbi->l2nbperpage;

 if ((block_offset = ((u32) blkno & (sbi->nbperpage - 1)))) {



  inodes_left =
      (sbi->nbperpage - block_offset) << sbi->l2niperblk;

  if (rel_inode < inodes_left)
   rel_inode += block_offset << sbi->l2niperblk;
  else {
   pageno += 1;
   rel_inode -= inodes_left;
  }
 }

      retry:
 mp = read_metapage(ipimap, pageno << sbi->l2nbperpage, PSIZE, 1);
 if (!mp)
  return -EIO;


 dp = (struct dinode *) mp->data;
 dp += rel_inode;

 dioffset = (ino & (INOSPERPAGE - 1)) << L2DISIZE;





 if ((ditlck =
      txLock(tid, ipimap, mp, tlckINODE | tlckENTRY)) == ((void*)0))
  goto retry;
 dilinelock = (struct linelock *) & ditlck->lock;
 if (S_ISDIR(ip->i_mode) && (lid = jfs_ip->xtlid)) {




  xtpage_t *p, *xp;
  xad_t *xad;

  jfs_ip->xtlid = 0;
  tlck = lid_to_tlock(lid);
  assert(tlck->type & tlckXTREE);
  tlck->type |= tlckBTROOT;
  tlck->mp = mp;
  ilinelock = (struct linelock *) & tlck->lock;




  p = &jfs_ip->i_xtroot;
  xp = (xtpage_t *) &dp->di_dirtable;
  lv = ilinelock->lv;
  for (n = 0; n < ilinelock->index; n++, lv++) {
   memcpy(&xp->xad[lv->offset], &p->xad[lv->offset],
          lv->length << L2XTSLOTSIZE);
  }


  xad = &xp->xad[XTENTRYSTART];
  for (n = XTENTRYSTART;
       n < le16_to_cpu(xp->header.nextindex); n++, xad++)
   if (xad->flag & (XAD_NEW | XAD_EXTENDED))
    xad->flag &= ~(XAD_NEW | XAD_EXTENDED);
 }

 if ((lid = jfs_ip->blid) == 0)
  goto inlineData;
 jfs_ip->blid = 0;

 tlck = lid_to_tlock(lid);
 type = tlck->type;
 tlck->type |= tlckBTROOT;
 tlck->mp = mp;
 ilinelock = (struct linelock *) & tlck->lock;




 if (type & tlckXTREE) {
  xtpage_t *p, *xp;
  xad_t *xad;




  p = &jfs_ip->i_xtroot;
  xp = &dp->di_xtroot;
  lv = ilinelock->lv;
  for (n = 0; n < ilinelock->index; n++, lv++) {
   memcpy(&xp->xad[lv->offset], &p->xad[lv->offset],
          lv->length << L2XTSLOTSIZE);
  }


  xad = &xp->xad[XTENTRYSTART];
  for (n = XTENTRYSTART;
       n < le16_to_cpu(xp->header.nextindex); n++, xad++)
   if (xad->flag & (XAD_NEW | XAD_EXTENDED))
    xad->flag &= ~(XAD_NEW | XAD_EXTENDED);
 }



 else if (type & tlckDTREE) {
  dtpage_t *p, *xp;




  p = (dtpage_t *) &jfs_ip->i_dtroot;
  xp = (dtpage_t *) & dp->di_dtroot;
  lv = ilinelock->lv;
  for (n = 0; n < ilinelock->index; n++, lv++) {
   memcpy(&xp->slot[lv->offset], &p->slot[lv->offset],
          lv->length << L2DTSLOTSIZE);
  }
 } else {
  jfs_err("diWrite: UFO tlock");
 }

      inlineData:



 if (S_ISLNK(ip->i_mode) && ip->i_size < IDATASIZE) {
  lv = & dilinelock->lv[dilinelock->index];
  lv->offset = (dioffset + 2 * 128) >> L2INODESLOTSIZE;
  lv->length = 2;
  memcpy(&dp->di_fastsymlink, jfs_ip->i_inline, IDATASIZE);
  dilinelock->index++;
 }




 if (test_cflag(COMMIT_Inlineea, ip)) {
  lv = & dilinelock->lv[dilinelock->index];
  lv->offset = (dioffset + 3 * 128) >> L2INODESLOTSIZE;
  lv->length = 1;
  memcpy(&dp->di_inlineea, jfs_ip->i_inline_ea, INODESLOTSIZE);
  dilinelock->index++;

  clear_cflag(COMMIT_Inlineea, ip);
 }




 lv = & dilinelock->lv[dilinelock->index];
 lv->offset = dioffset >> L2INODESLOTSIZE;
 copy_to_dinode(dp, ip);
 if (test_and_clear_cflag(COMMIT_Dirtable, ip)) {
  lv->length = 2;
  memcpy(&dp->di_dirtable, &jfs_ip->i_dirtable, 96);
 } else
  lv->length = 1;
 dilinelock->index++;




 write_metapage(mp);

 return (rc);
}
