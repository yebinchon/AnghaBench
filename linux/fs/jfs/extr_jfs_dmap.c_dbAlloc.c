
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct metapage {scalar_t__ data; } ;
struct inode {int i_sb; } ;
struct dmap {int dummy; } ;
struct bmap {scalar_t__ db_mapsize; int db_agl2size; int db_agsize; int * db_active; int db_l2nbperpage; } ;
typedef scalar_t__ s64 ;
struct TYPE_4__ {int active_ag; } ;
struct TYPE_3__ {struct bmap* bmap; struct inode* ipbmap; } ;


 int BLKSTOL2 (scalar_t__) ;
 scalar_t__ BLKTODMAP (scalar_t__,int ) ;
 scalar_t__ BPERDMAP ;
 int EIO ;
 int ENOSPC ;
 int IREAD_LOCK (struct inode*,int ) ;
 int IREAD_UNLOCK (struct inode*) ;
 int IWRITE_LOCK (struct inode*,int ) ;
 int IWRITE_UNLOCK (struct inode*) ;
 TYPE_2__* JFS_IP (struct inode*) ;
 TYPE_1__* JFS_SBI (int ) ;
 int PSIZE ;
 int RDWRLOCK_DMAP ;
 int assert (int) ;
 int atomic_read (int *) ;
 int dbAllocAG (struct bmap*,int,scalar_t__,int,scalar_t__*) ;
 int dbAllocAny (struct bmap*,scalar_t__,int,scalar_t__*) ;
 int dbAllocDmapLev (struct bmap*,struct dmap*,int,int,scalar_t__*) ;
 int dbAllocNear (struct bmap*,struct dmap*,scalar_t__,int,int,scalar_t__*) ;
 int dbAllocNext (struct bmap*,struct dmap*,scalar_t__,int) ;
 int dbNextAG (struct inode*) ;
 int jfs_error (int ,char*) ;
 int mark_metapage_dirty (struct metapage*) ;
 struct metapage* read_metapage (struct inode*,scalar_t__,int ,int ) ;
 int release_metapage (struct metapage*) ;

int dbAlloc(struct inode *ip, s64 hint, s64 nblocks, s64 * results)
{
 int rc, agno;
 struct inode *ipbmap = JFS_SBI(ip->i_sb)->ipbmap;
 struct bmap *bmp;
 struct metapage *mp;
 s64 lblkno, blkno;
 struct dmap *dp;
 int l2nb;
 s64 mapSize;
 int writers;


 assert(nblocks > 0);





 l2nb = BLKSTOL2(nblocks);

 bmp = JFS_SBI(ip->i_sb)->bmap;

 mapSize = bmp->db_mapsize;


 if (hint >= mapSize) {
  jfs_error(ip->i_sb, "the hint is outside the map\n");
  return -EIO;
 }




 if (l2nb > bmp->db_agl2size) {
  IWRITE_LOCK(ipbmap, RDWRLOCK_DMAP);

  rc = dbAllocAny(bmp, nblocks, l2nb, results);

  goto write_unlock;
 }




 if (hint == 0)
  goto pref_ag;





 blkno = hint + 1;

 if (blkno >= bmp->db_mapsize)
  goto pref_ag;

 agno = blkno >> bmp->db_agl2size;





 if ((blkno & (bmp->db_agsize - 1)) == 0)




  if (atomic_read(&bmp->db_active[agno]))
   goto pref_ag;





 if (nblocks <= BPERDMAP) {
  IREAD_LOCK(ipbmap, RDWRLOCK_DMAP);



  rc = -EIO;
  lblkno = BLKTODMAP(blkno, bmp->db_l2nbperpage);
  mp = read_metapage(ipbmap, lblkno, PSIZE, 0);
  if (mp == ((void*)0))
   goto read_unlock;

  dp = (struct dmap *) mp->data;




  if ((rc = dbAllocNext(bmp, dp, blkno, (int) nblocks))
      != -ENOSPC) {
   if (rc == 0) {
    *results = blkno;
    mark_metapage_dirty(mp);
   }

   release_metapage(mp);
   goto read_unlock;
  }

  writers = atomic_read(&bmp->db_active[agno]);
  if ((writers > 1) ||
      ((writers == 1) && (JFS_IP(ip)->active_ag != agno))) {




   release_metapage(mp);
   IREAD_UNLOCK(ipbmap);
   goto pref_ag;
  }




  if ((rc =
       dbAllocNear(bmp, dp, blkno, (int) nblocks, l2nb, results))
      != -ENOSPC) {
   if (rc == 0)
    mark_metapage_dirty(mp);

   release_metapage(mp);
   goto read_unlock;
  }




  if ((rc = dbAllocDmapLev(bmp, dp, (int) nblocks, l2nb, results))
      != -ENOSPC) {
   if (rc == 0)
    mark_metapage_dirty(mp);

   release_metapage(mp);
   goto read_unlock;
  }

  release_metapage(mp);
  IREAD_UNLOCK(ipbmap);
 }




 IWRITE_LOCK(ipbmap, RDWRLOCK_DMAP);
 if ((rc = dbAllocAG(bmp, agno, nblocks, l2nb, results)) != -ENOSPC)
  goto write_unlock;

 IWRITE_UNLOCK(ipbmap);


      pref_ag:



 agno = dbNextAG(ipbmap);
 IWRITE_LOCK(ipbmap, RDWRLOCK_DMAP);




 if ((rc = dbAllocAG(bmp, agno, nblocks, l2nb, results)) == -ENOSPC)
  rc = dbAllocAny(bmp, nblocks, l2nb, results);

      write_unlock:
 IWRITE_UNLOCK(ipbmap);

 return (rc);

      read_unlock:
 IREAD_UNLOCK(ipbmap);

 return (rc);
}
