
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct metapage {scalar_t__ data; } ;
struct inode {int i_sb; } ;
struct dmap {int dummy; } ;
struct bmap {scalar_t__ db_mapsize; int db_l2nbperpage; } ;
typedef scalar_t__ s64 ;
struct TYPE_2__ {struct bmap* bmap; struct inode* ipbmap; } ;


 int ASSERT (int) ;
 scalar_t__ BLKTODMAP (scalar_t__,int ) ;
 int BPERDMAP ;
 int EIO ;
 int IREAD_LOCK (struct inode*,int ) ;
 int IREAD_UNLOCK (struct inode*) ;
 TYPE_1__* JFS_SBI (int ) ;
 int PSIZE ;
 int RDWRLOCK_DMAP ;
 int dbAllocDmapBU (struct bmap*,struct dmap*,scalar_t__,int) ;
 int min (scalar_t__,int) ;
 struct metapage* read_metapage (struct inode*,scalar_t__,int ,int ) ;
 int release_metapage (struct metapage*) ;
 int write_metapage (struct metapage*) ;

int dbAllocBottomUp(struct inode *ip, s64 blkno, s64 nblocks)
{
 struct metapage *mp;
 struct dmap *dp;
 int nb, rc;
 s64 lblkno, rem;
 struct inode *ipbmap = JFS_SBI(ip->i_sb)->ipbmap;
 struct bmap *bmp = JFS_SBI(ip->i_sb)->bmap;

 IREAD_LOCK(ipbmap, RDWRLOCK_DMAP);


 ASSERT(nblocks <= bmp->db_mapsize - blkno);




 mp = ((void*)0);
 for (rem = nblocks; rem > 0; rem -= nb, blkno += nb) {

  if (mp) {
   write_metapage(mp);
  }


  lblkno = BLKTODMAP(blkno, bmp->db_l2nbperpage);
  mp = read_metapage(ipbmap, lblkno, PSIZE, 0);
  if (mp == ((void*)0)) {
   IREAD_UNLOCK(ipbmap);
   return -EIO;
  }
  dp = (struct dmap *) mp->data;




  nb = min(rem, BPERDMAP - (blkno & (BPERDMAP - 1)));


  if ((rc = dbAllocDmapBU(bmp, dp, blkno, nb))) {
   release_metapage(mp);
   IREAD_UNLOCK(ipbmap);
   return (rc);
  }
 }


 write_metapage(mp);

 IREAD_UNLOCK(ipbmap);

 return (0);
}
