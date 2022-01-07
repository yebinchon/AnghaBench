
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct metapage {scalar_t__ data; } ;
struct inomap {TYPE_2__* im_agctl; } ;
struct inode {int i_ino; int i_sb; } ;
struct iag {int * extsmap; int * inosmap; int * wmap; int * inoext; scalar_t__ nfreeinos; scalar_t__ nfreeexts; } ;
typedef int ino_t ;
struct TYPE_9__ {int agstart; int fileset; struct inode* ipimap; struct inomap* i_imap; } ;
struct TYPE_8__ {int ipbmap; TYPE_1__* bmap; struct inode* ipimap; } ;
struct TYPE_7__ {int numfree; } ;
struct TYPE_6__ {int * db_active; } ;


 int AG_LOCK (struct inomap*,int) ;
 int AG_UNLOCK (struct inomap*,int) ;
 int BLKTOAG (int ,TYPE_3__*) ;
 int EIO ;
 int ENOSPC ;
 int EXTSPERIAG ;
 int EXTSPERSUM ;
 int FILESYSTEM_I ;
 int INOSPEREXT ;
 int INOSPERIAG ;
 int INOTOIAG (int) ;
 int IREAD_LOCK (struct inode*,int ) ;
 int IREAD_UNLOCK (struct inode*) ;
 TYPE_4__* JFS_IP (struct inode*) ;
 TYPE_3__* JFS_SBI (int ) ;
 int L2EXTSPERSUM ;
 int L2INOSPEREXT ;
 int ONES ;
 int RDWRLOCK_IMAP ;
 int SMAPSZ ;
 scalar_t__ addressPXD (int *) ;
 int assert (int) ;
 scalar_t__ atomic_read (int *) ;
 int dbNextAG (int ) ;
 int diAllocAG (struct inomap*,int,int,struct inode*) ;
 int diAllocAny (struct inomap*,int,int,struct inode*) ;
 int diAllocBit (struct inomap*,struct iag*,int) ;
 int diFindFree (int,int) ;
 int diIAGRead (struct inomap*,int,struct metapage**) ;
 int diInitInode (struct inode*,int,int,int,struct iag*) ;
 int diNewExt (struct inomap*,struct iag*,int) ;
 int jfs_error (int ,char*) ;
 int le32_to_cpu (int ) ;
 int mark_metapage_dirty (struct metapage*) ;
 int release_metapage (struct metapage*) ;

int diAlloc(struct inode *pip, bool dir, struct inode *ip)
{
 int rc, ino, iagno, addext, extno, bitno, sword;
 int nwords, rem, i, agno;
 u32 mask, inosmap, extsmap;
 struct inode *ipimap;
 struct metapage *mp;
 ino_t inum;
 struct iag *iagp;
 struct inomap *imap;




 ipimap = JFS_SBI(pip->i_sb)->ipimap;
 imap = JFS_IP(ipimap)->i_imap;
 JFS_IP(ip)->ipimap = ipimap;
 JFS_IP(ip)->fileset = FILESYSTEM_I;




 if (dir) {
  agno = dbNextAG(JFS_SBI(pip->i_sb)->ipbmap);
  AG_LOCK(imap, agno);
  goto tryag;
 }
 agno = BLKTOAG(JFS_IP(pip)->agstart, JFS_SBI(pip->i_sb));

 if (atomic_read(&JFS_SBI(pip->i_sb)->bmap->db_active[agno])) {





  agno = dbNextAG(JFS_SBI(pip->i_sb)->ipbmap);
  AG_LOCK(imap, agno);
  goto tryag;
 }

 inum = pip->i_ino + 1;
 ino = inum & (INOSPERIAG - 1);


 if (ino == 0)
  inum = pip->i_ino;


 AG_LOCK(imap, agno);


 IREAD_LOCK(ipimap, RDWRLOCK_IMAP);


 iagno = INOTOIAG(inum);
 if ((rc = diIAGRead(imap, iagno, &mp))) {
  IREAD_UNLOCK(ipimap);
  AG_UNLOCK(imap, agno);
  return (rc);
 }
 iagp = (struct iag *) mp->data;





 addext = (imap->im_agctl[agno].numfree < 32 && iagp->nfreeexts);







 if (iagp->nfreeinos || addext) {


  extno = ino >> L2INOSPEREXT;




  if (addressPXD(&iagp->inoext[extno])) {
   bitno = ino & (INOSPEREXT - 1);
   if ((bitno =
        diFindFree(le32_to_cpu(iagp->wmap[extno]),
     bitno))
       < INOSPEREXT) {
    ino = (extno << L2INOSPEREXT) + bitno;




    rc = diAllocBit(imap, iagp, ino);
    IREAD_UNLOCK(ipimap);
    if (rc) {
     assert(rc == -EIO);
    } else {



     diInitInode(ip, iagno, ino, extno,
          iagp);
     mark_metapage_dirty(mp);
    }
    release_metapage(mp);



    AG_UNLOCK(imap, agno);
    return (rc);
   }

   if (!addext)
    extno =
        (extno ==
         EXTSPERIAG - 1) ? 0 : extno + 1;
  }
  bitno = extno & (EXTSPERSUM - 1);
  nwords = (bitno == 0) ? SMAPSZ : SMAPSZ + 1;
  sword = extno >> L2EXTSPERSUM;




  mask = (bitno == 0) ? 0 : (ONES << (EXTSPERSUM - bitno));
  inosmap = le32_to_cpu(iagp->inosmap[sword]) | mask;
  extsmap = le32_to_cpu(iagp->extsmap[sword]) | mask;




  for (i = 0; i < nwords; i++) {



   if (~inosmap) {




    rem = diFindFree(inosmap, 0);
    extno = (sword << L2EXTSPERSUM) + rem;
    rem = diFindFree(le32_to_cpu(iagp->wmap[extno]),
       0);
    if (rem >= INOSPEREXT) {
     IREAD_UNLOCK(ipimap);
     release_metapage(mp);
     AG_UNLOCK(imap, agno);
     jfs_error(ip->i_sb,
        "can't find free bit in wmap\n");
     return -EIO;
    }





    ino = (extno << L2INOSPEREXT) + rem;
    rc = diAllocBit(imap, iagp, ino);
    IREAD_UNLOCK(ipimap);
    if (rc)
     assert(rc == -EIO);
    else {



     diInitInode(ip, iagno, ino, extno,
          iagp);
     mark_metapage_dirty(mp);
    }
    release_metapage(mp);



    AG_UNLOCK(imap, agno);
    return (rc);

   }





   if (addext && ~extsmap) {



    rem = diFindFree(extsmap, 0);
    extno = (sword << L2EXTSPERSUM) + rem;



    if ((rc = diNewExt(imap, iagp, extno))) {




     if (rc == -ENOSPC)
      break;

     assert(rc == -EIO);
    } else {



     diInitInode(ip, iagno,
          extno << L2INOSPEREXT,
          extno, iagp);
     mark_metapage_dirty(mp);
    }
    release_metapage(mp);


    IREAD_UNLOCK(ipimap);
    AG_UNLOCK(imap, agno);
    return (rc);
   }



   sword = (sword == SMAPSZ - 1) ? 0 : sword + 1;
   inosmap = le32_to_cpu(iagp->inosmap[sword]);
   extsmap = le32_to_cpu(iagp->extsmap[sword]);
  }
 }

 IREAD_UNLOCK(ipimap);


 release_metapage(mp);

      tryag:



 rc = diAllocAG(imap, agno, dir, ip);

 AG_UNLOCK(imap, agno);

 if (rc != -ENOSPC)
  return (rc);




 return (diAllocAny(imap, agno, dir, ip));
}
