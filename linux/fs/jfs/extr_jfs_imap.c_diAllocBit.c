
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct metapage {scalar_t__ data; } ;
struct inomap {int im_numfree; TYPE_2__* im_agctl; TYPE_1__* im_ipimap; } ;
struct iag {int nfreeinos; int inofreeback; int inofreefwd; int * inosmap; int * wmap; int * inoext; int * pmap; int agstart; } ;
struct TYPE_4__ {int inofree; int numfree; } ;
struct TYPE_3__ {int i_sb; } ;


 int BLKTOAG (int ,int ) ;
 int EIO ;
 int EXTSPERSUM ;
 int HIGHORDER ;
 int INOSPEREXT ;
 int JFS_SBI (int ) ;
 int L2EXTSPERSUM ;
 int L2INOSPEREXT ;
 int ONES ;
 scalar_t__ addressPXD (int *) ;
 int atomic_dec (int *) ;
 int cpu_to_le32 (int) ;
 int diIAGRead (struct inomap*,int,struct metapage**) ;
 int jfs_error (int ,char*) ;
 int le32_add_cpu (int *,int) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int release_metapage (struct metapage*) ;
 int write_metapage (struct metapage*) ;

__attribute__((used)) static int diAllocBit(struct inomap * imap, struct iag * iagp, int ino)
{
 int extno, bitno, agno, sword, rc;
 struct metapage *amp = ((void*)0), *bmp = ((void*)0);
 struct iag *aiagp = ((void*)0), *biagp = ((void*)0);
 u32 mask;






 if (iagp->nfreeinos == cpu_to_le32(1)) {
  if ((int) le32_to_cpu(iagp->inofreefwd) >= 0) {
   if ((rc =
        diIAGRead(imap, le32_to_cpu(iagp->inofreefwd),
           &amp)))
    return (rc);
   aiagp = (struct iag *) amp->data;
  }

  if ((int) le32_to_cpu(iagp->inofreeback) >= 0) {
   if ((rc =
        diIAGRead(imap,
           le32_to_cpu(iagp->inofreeback),
           &bmp))) {
    if (amp)
     release_metapage(amp);
    return (rc);
   }
   biagp = (struct iag *) bmp->data;
  }
 }




 agno = BLKTOAG(le64_to_cpu(iagp->agstart), JFS_SBI(imap->im_ipimap->i_sb));
 extno = ino >> L2INOSPEREXT;
 bitno = ino & (INOSPEREXT - 1);



 mask = HIGHORDER >> bitno;



 if (((le32_to_cpu(iagp->pmap[extno]) & mask) != 0) ||
     ((le32_to_cpu(iagp->wmap[extno]) & mask) != 0) ||
     (addressPXD(&iagp->inoext[extno]) == 0)) {
  if (amp)
   release_metapage(amp);
  if (bmp)
   release_metapage(bmp);

  jfs_error(imap->im_ipimap->i_sb, "iag inconsistent\n");
  return -EIO;
 }



 iagp->wmap[extno] |= cpu_to_le32(mask);





 if (iagp->wmap[extno] == cpu_to_le32(ONES)) {
  sword = extno >> L2EXTSPERSUM;
  bitno = extno & (EXTSPERSUM - 1);
  iagp->inosmap[sword] |= cpu_to_le32(HIGHORDER >> bitno);
 }




 if (iagp->nfreeinos == cpu_to_le32(1)) {
  if (amp) {
   aiagp->inofreeback = iagp->inofreeback;
   write_metapage(amp);
  }

  if (bmp) {
   biagp->inofreefwd = iagp->inofreefwd;
   write_metapage(bmp);
  } else {
   imap->im_agctl[agno].inofree =
       le32_to_cpu(iagp->inofreefwd);
  }
  iagp->inofreefwd = iagp->inofreeback = cpu_to_le32(-1);
 }




 le32_add_cpu(&iagp->nfreeinos, -1);
 imap->im_agctl[agno].numfree -= 1;
 atomic_dec(&imap->im_numfree);

 return (0);
}
