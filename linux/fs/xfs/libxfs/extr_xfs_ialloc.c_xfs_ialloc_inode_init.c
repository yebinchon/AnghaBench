
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xfs_ino_t ;
typedef int xfs_daddr_t ;
typedef int xfs_agnumber_t ;
typedef int xfs_agblock_t ;
typedef scalar_t__ uint ;
struct xfs_trans {int dummy; } ;
struct TYPE_3__ {int sb_inodelog; int sb_meta_uuid; int sb_inodesize; } ;
struct xfs_mount {int m_bsize; TYPE_1__ m_sb; int m_ddev_targp; } ;
struct xfs_dinode {int di_version; int di_uuid; int di_ino; void* di_next_unlinked; void* di_gen; int di_magic; } ;
struct xfs_buf {int b_flags; int b_length; int * b_ops; } ;
struct list_head {int dummy; } ;
struct TYPE_4__ {int blocks_per_cluster; int inodes_per_cluster; } ;


 int BBTOB (int ) ;
 int ENOMEM ;
 TYPE_2__* M_IGEO (struct xfs_mount*) ;
 unsigned int NULLAGINO ;
 int XBF_DONE ;
 int XBF_UNMAPPED ;
 int XFS_AGB_TO_AGINO (struct xfs_mount*,int) ;
 int XFS_AGB_TO_DADDR (struct xfs_mount*,int ,int) ;
 scalar_t__ XFS_AGINO_TO_INO (struct xfs_mount*,int ,int ) ;
 int XFS_DINODE_MAGIC ;
 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (unsigned int) ;
 int cpu_to_be64 (scalar_t__) ;
 int uuid_copy (int *,int *) ;
 int xfs_buf_delwri_queue (struct xfs_buf*,struct list_head*) ;
 int xfs_buf_relse (struct xfs_buf*) ;
 int xfs_buf_zero (struct xfs_buf*,int ,int ) ;
 int xfs_dinode_calc_crc (struct xfs_mount*,struct xfs_dinode*) ;
 scalar_t__ xfs_dinode_size (int) ;
 int xfs_icreate_log (struct xfs_trans*,int ,int,int,int ,int,unsigned int) ;
 int xfs_inode_buf_ops ;
 struct xfs_dinode* xfs_make_iptr (struct xfs_mount*,struct xfs_buf*,int) ;
 scalar_t__ xfs_sb_version_hascrc (TYPE_1__*) ;
 struct xfs_buf* xfs_trans_get_buf (struct xfs_trans*,int ,int ,int,int ) ;
 int xfs_trans_inode_alloc_buf (struct xfs_trans*,struct xfs_buf*) ;
 int xfs_trans_log_buf (struct xfs_trans*,struct xfs_buf*,int,scalar_t__) ;
 int xfs_trans_ordered_buf (struct xfs_trans*,struct xfs_buf*) ;

int
xfs_ialloc_inode_init(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 struct list_head *buffer_list,
 int icount,
 xfs_agnumber_t agno,
 xfs_agblock_t agbno,
 xfs_agblock_t length,
 unsigned int gen)
{
 struct xfs_buf *fbuf;
 struct xfs_dinode *free;
 int nbufs;
 int version;
 int i, j;
 xfs_daddr_t d;
 xfs_ino_t ino = 0;






 nbufs = length / M_IGEO(mp)->blocks_per_cluster;
 if (xfs_sb_version_hascrc(&mp->m_sb)) {
  version = 3;
  ino = XFS_AGINO_TO_INO(mp, agno, XFS_AGB_TO_AGINO(mp, agbno));
  if (tp)
   xfs_icreate_log(tp, agno, agbno, icount,
     mp->m_sb.sb_inodesize, length, gen);
 } else
  version = 2;

 for (j = 0; j < nbufs; j++) {



  d = XFS_AGB_TO_DADDR(mp, agno, agbno +
    (j * M_IGEO(mp)->blocks_per_cluster));
  fbuf = xfs_trans_get_buf(tp, mp->m_ddev_targp, d,
      mp->m_bsize *
      M_IGEO(mp)->blocks_per_cluster,
      XBF_UNMAPPED);
  if (!fbuf)
   return -ENOMEM;


  fbuf->b_ops = &xfs_inode_buf_ops;
  xfs_buf_zero(fbuf, 0, BBTOB(fbuf->b_length));
  for (i = 0; i < M_IGEO(mp)->inodes_per_cluster; i++) {
   int ioffset = i << mp->m_sb.sb_inodelog;
   uint isize = xfs_dinode_size(version);

   free = xfs_make_iptr(mp, fbuf, i);
   free->di_magic = cpu_to_be16(XFS_DINODE_MAGIC);
   free->di_version = version;
   free->di_gen = cpu_to_be32(gen);
   free->di_next_unlinked = cpu_to_be32(NULLAGINO);

   if (version == 3) {
    free->di_ino = cpu_to_be64(ino);
    ino++;
    uuid_copy(&free->di_uuid,
       &mp->m_sb.sb_meta_uuid);
    xfs_dinode_calc_crc(mp, free);
   } else if (tp) {

    xfs_trans_log_buf(tp, fbuf, ioffset,
        ioffset + isize - 1);
   }
  }

  if (tp) {
   xfs_trans_inode_alloc_buf(tp, fbuf);
   if (version == 3) {






    xfs_trans_ordered_buf(tp, fbuf);
   }
  } else {
   fbuf->b_flags |= XBF_DONE;
   xfs_buf_delwri_queue(fbuf, buffer_list);
   xfs_buf_relse(fbuf);
  }
 }
 return 0;
}
