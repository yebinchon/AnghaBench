
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bb_numrecs; int bb_level; } ;
typedef TYPE_1__ xfs_bmdr_block_t ;
typedef int xfs_bmbt_key_t ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {int i_ino; struct xfs_mount* i_mount; } ;
struct xfs_btree_block {int bb_numrecs; int bb_level; } ;
typedef int __be64 ;


 int ASSERT (int) ;
 int * XFS_BMAP_BROOT_PTR_ADDR (struct xfs_mount*,struct xfs_btree_block*,int,int) ;
 int * XFS_BMBT_KEY_ADDR (struct xfs_mount*,struct xfs_btree_block*,int) ;
 int * XFS_BMDR_KEY_ADDR (TYPE_1__*,int) ;
 int * XFS_BMDR_PTR_ADDR (TYPE_1__*,int,int) ;
 int XFS_BTNUM_BMAP ;
 int XFS_BTREE_LONG_PTRS ;
 int XFS_BUF_DADDR_NULL ;
 int be16_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int xfs_bmdr_maxrecs (int,int ) ;
 int xfs_btree_init_block_int (struct xfs_mount*,struct xfs_btree_block*,int ,int ,int ,int ,int ,int ) ;

void
xfs_bmdr_to_bmbt(
 struct xfs_inode *ip,
 xfs_bmdr_block_t *dblock,
 int dblocklen,
 struct xfs_btree_block *rblock,
 int rblocklen)
{
 struct xfs_mount *mp = ip->i_mount;
 int dmxr;
 xfs_bmbt_key_t *fkp;
 __be64 *fpp;
 xfs_bmbt_key_t *tkp;
 __be64 *tpp;

 xfs_btree_init_block_int(mp, rblock, XFS_BUF_DADDR_NULL,
     XFS_BTNUM_BMAP, 0, 0, ip->i_ino,
     XFS_BTREE_LONG_PTRS);
 rblock->bb_level = dblock->bb_level;
 ASSERT(be16_to_cpu(rblock->bb_level) > 0);
 rblock->bb_numrecs = dblock->bb_numrecs;
 dmxr = xfs_bmdr_maxrecs(dblocklen, 0);
 fkp = XFS_BMDR_KEY_ADDR(dblock, 1);
 tkp = XFS_BMBT_KEY_ADDR(mp, rblock, 1);
 fpp = XFS_BMDR_PTR_ADDR(dblock, 1, dmxr);
 tpp = XFS_BMAP_BROOT_PTR_ADDR(mp, rblock, 1, rblocklen);
 dmxr = be16_to_cpu(dblock->bb_numrecs);
 memcpy(tkp, fkp, sizeof(*fkp) * dmxr);
 memcpy(tpp, fpp, sizeof(*fpp) * dmxr);
}
