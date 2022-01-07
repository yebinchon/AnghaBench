
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct metapage {scalar_t__ data; } ;
struct inomap {int im_freeiag; int im_ipimap; TYPE_1__* im_agctl; } ;
struct inode {int i_sb; } ;
struct iag {int* extsmap; scalar_t__ nfreeexts; scalar_t__ iagfree; int agstart; } ;
struct TYPE_2__ {int extfree; } ;


 int AGTOBLK (int,int ) ;
 int EIO ;
 int EXTSPERIAG ;
 int EXTSPERSUM ;
 int IAGFREE_LOCK (struct inomap*) ;
 int IAGFREE_UNLOCK (struct inomap*) ;
 int IREAD_LOCK (int ,int ) ;
 int IREAD_UNLOCK (int ) ;
 int L2EXTSPERSUM ;
 int L2INOSPEREXT ;
 int RDWRLOCK_IMAP ;
 int SMAPSZ ;
 scalar_t__ cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;
 int diFindFree (int ,int ) ;
 int diIAGRead (struct inomap*,int,struct metapage**) ;
 int diInitInode (struct inode*,int,int,int,struct iag*) ;
 int diNewExt (struct inomap*,struct iag*,int) ;
 int diNewIAG (struct inomap*,int*,int,struct metapage**) ;
 int jfs_error (int ,char*) ;
 int le32_to_cpu (int) ;
 int release_metapage (struct metapage*) ;
 int write_metapage (struct metapage*) ;

__attribute__((used)) static int diAllocExt(struct inomap * imap, int agno, struct inode *ip)
{
 int rem, iagno, sword, extno, rc;
 struct metapage *mp;
 struct iag *iagp;




 if ((iagno = imap->im_agctl[agno].extfree) < 0) {



  if ((rc = diNewIAG(imap, &iagno, agno, &mp))) {
   return (rc);
  }
  iagp = (struct iag *) mp->data;



  iagp->agstart =
      cpu_to_le64(AGTOBLK(agno, imap->im_ipimap));
 } else {


  IREAD_LOCK(imap->im_ipimap, RDWRLOCK_IMAP);
  if ((rc = diIAGRead(imap, iagno, &mp))) {
   IREAD_UNLOCK(imap->im_ipimap);
   jfs_error(ip->i_sb, "error reading iag\n");
   return rc;
  }
  iagp = (struct iag *) mp->data;
 }



 for (sword = 0;; sword++) {
  if (sword >= SMAPSZ) {
   release_metapage(mp);
   IREAD_UNLOCK(imap->im_ipimap);
   jfs_error(ip->i_sb, "free ext summary map not found\n");
   return -EIO;
  }
  if (~iagp->extsmap[sword])
   break;
 }



 rem = diFindFree(le32_to_cpu(iagp->extsmap[sword]), 0);
 if (rem >= EXTSPERSUM) {
  release_metapage(mp);
  IREAD_UNLOCK(imap->im_ipimap);
  jfs_error(ip->i_sb, "free extent not found\n");
  return -EIO;
 }
 extno = (sword << L2EXTSPERSUM) + rem;



 rc = diNewExt(imap, iagp, extno);
 IREAD_UNLOCK(imap->im_ipimap);
 if (rc) {




  if (iagp->nfreeexts == cpu_to_le32(EXTSPERIAG)) {
   IAGFREE_LOCK(imap);
   iagp->iagfree = cpu_to_le32(imap->im_freeiag);
   imap->im_freeiag = iagno;
   IAGFREE_UNLOCK(imap);
  }
  write_metapage(mp);
  return (rc);
 }



 diInitInode(ip, iagno, extno << L2INOSPEREXT, extno, iagp);

 write_metapage(mp);

 return (0);
}
