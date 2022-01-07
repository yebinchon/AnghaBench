
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tid_t ;
struct super_block {int dummy; } ;
struct metapage {scalar_t__ data; } ;
struct jfs_sb_info {int nbperpage; int l2nbperpage; } ;
struct inomap {int im_freeiag; scalar_t__ im_nextiag; struct inode* im_ipimap; } ;
struct inode {int i_size; struct super_block* i_sb; } ;
struct iag {void* iagfree; void** inosmap; void* nfreeexts; scalar_t__ nfreeinos; void* extfreeback; void* extfreefwd; void* inofreeback; void* inofreefwd; void* iagnum; } ;
typedef int s64 ;
struct TYPE_2__ {int commit_mutex; } ;


 int COMMIT_FORCE ;
 int COMMIT_PWMAP ;
 int EIO ;
 int ENOSPC ;
 int EXTSPERIAG ;
 int IAGFREE_LOCK (struct inomap*) ;
 int IAGFREE_UNLOCK (struct inomap*) ;
 int IAGTOLBLK (int,int ) ;
 int IREAD_LOCK (struct inode*,int ) ;
 int IREAD_UNLOCK (struct inode*) ;
 int IWRITE_LOCK (struct inode*,int ) ;
 int IWRITE_UNLOCK (struct inode*) ;
 TYPE_1__* JFS_IP (struct inode*) ;
 struct jfs_sb_info* JFS_SBI (struct super_block*) ;
 scalar_t__ L2PSIZE ;
 int MAXIAGS ;
 int ONES ;
 int PSIZE ;
 int RDWRLOCK_IMAP ;
 int SMAPSZ ;
 void* cpu_to_le32 (int) ;
 int dbAlloc (struct inode*,int ,int ,int *) ;
 int dbFree (struct inode*,int ,int ) ;
 int diIAGRead (struct inomap*,int,struct metapage**) ;
 int diSync (struct inode*) ;
 int duplicateIXtree (struct super_block*,int ,int,int *) ;
 int flush_metapage (struct metapage*) ;
 struct metapage* get_metapage (struct inode*,int ,int,int ) ;
 int inode_add_bytes (struct inode*,int) ;
 int jfs_error (struct super_block*,char*) ;
 int le32_to_cpu (void*) ;
 int memset (struct iag*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int txAbort (int ,int ) ;
 int txBegin (struct super_block*,int ) ;
 int txCommit (int ,int,struct inode**,int ) ;
 int txEnd (int ) ;
 int xtInsert (int ,struct inode*,int ,int ,int,int *,int ) ;
 int xtTruncate (int ,struct inode*,int,int ) ;

__attribute__((used)) static int
diNewIAG(struct inomap * imap, int *iagnop, int agno, struct metapage ** mpp)
{
 int rc;
 int iagno, i, xlen;
 struct inode *ipimap;
 struct super_block *sb;
 struct jfs_sb_info *sbi;
 struct metapage *mp;
 struct iag *iagp;
 s64 xaddr = 0;
 s64 blkno;
 tid_t tid;
 struct inode *iplist[1];


 ipimap = imap->im_ipimap;
 sb = ipimap->i_sb;
 sbi = JFS_SBI(sb);


 IAGFREE_LOCK(imap);




 if (imap->im_freeiag >= 0) {

  iagno = imap->im_freeiag;


  blkno = IAGTOLBLK(iagno, sbi->l2nbperpage);
 } else {





  IWRITE_LOCK(ipimap, RDWRLOCK_IMAP);

  if (ipimap->i_size >> L2PSIZE != imap->im_nextiag + 1) {
   IWRITE_UNLOCK(ipimap);
   IAGFREE_UNLOCK(imap);
   jfs_error(imap->im_ipimap->i_sb,
      "ipimap->i_size is wrong\n");
   return -EIO;
  }



  iagno = imap->im_nextiag;




  if (iagno > (MAXIAGS - 1)) {

   IWRITE_UNLOCK(ipimap);

   rc = -ENOSPC;
   goto out;
  }





  blkno = IAGTOLBLK(iagno, sbi->l2nbperpage);


  xlen = sbi->nbperpage;
  if ((rc = dbAlloc(ipimap, 0, (s64) xlen, &xaddr))) {

   IWRITE_UNLOCK(ipimap);

   goto out;
  }





  tid = txBegin(sb, COMMIT_FORCE);
  mutex_lock(&JFS_IP(ipimap)->commit_mutex);


  if ((rc =
       xtInsert(tid, ipimap, 0, blkno, xlen, &xaddr, 0))) {
   txEnd(tid);
   mutex_unlock(&JFS_IP(ipimap)->commit_mutex);



   dbFree(ipimap, xaddr, (s64) xlen);


   IWRITE_UNLOCK(ipimap);

   goto out;
  }


  ipimap->i_size += PSIZE;
  inode_add_bytes(ipimap, PSIZE);


  mp = get_metapage(ipimap, blkno, PSIZE, 0);
  if (!mp) {




   xtTruncate(tid, ipimap, ipimap->i_size - PSIZE,
       COMMIT_PWMAP);

   txAbort(tid, 0);
   txEnd(tid);
   mutex_unlock(&JFS_IP(ipimap)->commit_mutex);


   IWRITE_UNLOCK(ipimap);

   rc = -EIO;
   goto out;
  }
  iagp = (struct iag *) mp->data;


  memset(iagp, 0, sizeof(struct iag));
  iagp->iagnum = cpu_to_le32(iagno);
  iagp->inofreefwd = iagp->inofreeback = cpu_to_le32(-1);
  iagp->extfreefwd = iagp->extfreeback = cpu_to_le32(-1);
  iagp->iagfree = cpu_to_le32(-1);
  iagp->nfreeinos = 0;
  iagp->nfreeexts = cpu_to_le32(EXTSPERIAG);




  for (i = 0; i < SMAPSZ; i++)
   iagp->inosmap[i] = cpu_to_le32(ONES);




  flush_metapage(mp);






  iplist[0] = ipimap;
  rc = txCommit(tid, 1, &iplist[0], COMMIT_FORCE);

  txEnd(tid);
  mutex_unlock(&JFS_IP(ipimap)->commit_mutex);

  duplicateIXtree(sb, blkno, xlen, &xaddr);


  imap->im_nextiag += 1;




  imap->im_freeiag = iagno;




  diSync(ipimap);


  IWRITE_UNLOCK(ipimap);
 }


 IREAD_LOCK(ipimap, RDWRLOCK_IMAP);


 if ((rc = diIAGRead(imap, iagno, &mp))) {
  IREAD_UNLOCK(ipimap);
  rc = -EIO;
  goto out;
 }
 iagp = (struct iag *) mp->data;


 imap->im_freeiag = le32_to_cpu(iagp->iagfree);
 iagp->iagfree = cpu_to_le32(-1);


 *iagnop = iagno;
 *mpp = mp;

      out:

 IAGFREE_UNLOCK(imap);

 return (rc);
}
