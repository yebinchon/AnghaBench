
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xfs_da_node_entry_t ;
typedef int uint ;
struct TYPE_4__ {int sb_versionnum; int sb_blocklog; int sb_dirblklog; } ;
struct xfs_mount {int * m_dirnameops; TYPE_1__ m_sb; struct xfs_da_geometry* m_attr_geo; struct xfs_da_geometry* m_dir_geo; TYPE_2__* m_dir_inode_ops; int m_nondir_inode_ops; } ;
struct xfs_da_geometry {int blklog; int fsblog; int blksize; int fsbcount; int node_ents; int magicpct; void* freeblk; void* leafblk; void* datablk; } ;
struct TYPE_5__ {int node_hdr_size; } ;


 int ASSERT (int) ;
 int ENOMEM ;
 int KM_MAYFAIL ;
 int XFS_DIR2_DATA_OFFSET ;
 int XFS_DIR2_FREE_OFFSET ;
 int XFS_DIR2_LEAF_OFFSET ;
 scalar_t__ XFS_MAX_BLOCKSIZE ;
 int XFS_SB_VERSION_DIRV2BIT ;
 int kmem_free (struct xfs_da_geometry*) ;
 void* kmem_zalloc (int,int ) ;
 int xfs_ascii_ci_nameops ;
 int xfs_default_nameops ;
 void* xfs_dir2_byte_to_da (struct xfs_da_geometry*,int ) ;
 scalar_t__ xfs_dir2_dirblock_bytes (TYPE_1__*) ;
 TYPE_2__* xfs_dir_get_ops (struct xfs_mount*,int *) ;
 int xfs_nondir_get_ops (struct xfs_mount*,int *) ;
 scalar_t__ xfs_sb_version_hasasciici (TYPE_1__*) ;

int
xfs_da_mount(
 struct xfs_mount *mp)
{
 struct xfs_da_geometry *dageo;
 int nodehdr_size;


 ASSERT(mp->m_sb.sb_versionnum & XFS_SB_VERSION_DIRV2BIT);
 ASSERT(xfs_dir2_dirblock_bytes(&mp->m_sb) <= XFS_MAX_BLOCKSIZE);

 mp->m_dir_inode_ops = xfs_dir_get_ops(mp, ((void*)0));
 mp->m_nondir_inode_ops = xfs_nondir_get_ops(mp, ((void*)0));

 nodehdr_size = mp->m_dir_inode_ops->node_hdr_size;
 mp->m_dir_geo = kmem_zalloc(sizeof(struct xfs_da_geometry),
        KM_MAYFAIL);
 mp->m_attr_geo = kmem_zalloc(sizeof(struct xfs_da_geometry),
         KM_MAYFAIL);
 if (!mp->m_dir_geo || !mp->m_attr_geo) {
  kmem_free(mp->m_dir_geo);
  kmem_free(mp->m_attr_geo);
  return -ENOMEM;
 }


 dageo = mp->m_dir_geo;
 dageo->blklog = mp->m_sb.sb_blocklog + mp->m_sb.sb_dirblklog;
 dageo->fsblog = mp->m_sb.sb_blocklog;
 dageo->blksize = xfs_dir2_dirblock_bytes(&mp->m_sb);
 dageo->fsbcount = 1 << mp->m_sb.sb_dirblklog;





 dageo->datablk = xfs_dir2_byte_to_da(dageo, XFS_DIR2_DATA_OFFSET);
 dageo->leafblk = xfs_dir2_byte_to_da(dageo, XFS_DIR2_LEAF_OFFSET);
 dageo->freeblk = xfs_dir2_byte_to_da(dageo, XFS_DIR2_FREE_OFFSET);
 dageo->node_ents = (dageo->blksize - nodehdr_size) /
    (uint)sizeof(xfs_da_node_entry_t);
 dageo->magicpct = (dageo->blksize * 37) / 100;


 dageo = mp->m_attr_geo;
 dageo->blklog = mp->m_sb.sb_blocklog;
 dageo->fsblog = mp->m_sb.sb_blocklog;
 dageo->blksize = 1 << dageo->blklog;
 dageo->fsbcount = 1;
 dageo->node_ents = (dageo->blksize - nodehdr_size) /
    (uint)sizeof(xfs_da_node_entry_t);
 dageo->magicpct = (dageo->blksize * 37) / 100;

 if (xfs_sb_version_hasasciici(&mp->m_sb))
  mp->m_dirnameops = &xfs_ascii_ci_nameops;
 else
  mp->m_dirnameops = &xfs_default_nameops;

 return 0;
}
