
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ bb_level; int bb_numrecs; } ;
typedef TYPE_3__ xfs_bmdr_block_t ;
typedef int xfs_bmbt_key_t ;
struct TYPE_11__ {int sb_meta_uuid; } ;
struct xfs_mount {TYPE_4__ m_sb; } ;
struct TYPE_8__ {scalar_t__ bb_blkno; scalar_t__ bb_leftsib; scalar_t__ bb_rightsib; int bb_uuid; } ;
struct TYPE_9__ {TYPE_1__ l; } ;
struct xfs_btree_block {scalar_t__ bb_magic; scalar_t__ bb_level; int bb_numrecs; TYPE_2__ bb_u; } ;
typedef int __be64 ;


 int ASSERT (int) ;
 int NULLFSBLOCK ;
 int * XFS_BMAP_BROOT_PTR_ADDR (struct xfs_mount*,struct xfs_btree_block*,int,int) ;
 int XFS_BMAP_CRC_MAGIC ;
 int XFS_BMAP_MAGIC ;
 int * XFS_BMBT_KEY_ADDR (struct xfs_mount*,struct xfs_btree_block*,int) ;
 int * XFS_BMDR_KEY_ADDR (TYPE_3__*,int) ;
 int * XFS_BMDR_PTR_ADDR (TYPE_3__*,int,int) ;
 int XFS_BUF_DADDR_NULL ;
 int be16_to_cpu (int ) ;
 scalar_t__ cpu_to_be32 (int ) ;
 scalar_t__ cpu_to_be64 (int ) ;
 int memcpy (int *,int *,int) ;
 int uuid_equal (int *,int *) ;
 int xfs_bmdr_maxrecs (int,int ) ;
 scalar_t__ xfs_sb_version_hascrc (TYPE_4__*) ;

void
xfs_bmbt_to_bmdr(
 struct xfs_mount *mp,
 struct xfs_btree_block *rblock,
 int rblocklen,
 xfs_bmdr_block_t *dblock,
 int dblocklen)
{
 int dmxr;
 xfs_bmbt_key_t *fkp;
 __be64 *fpp;
 xfs_bmbt_key_t *tkp;
 __be64 *tpp;

 if (xfs_sb_version_hascrc(&mp->m_sb)) {
  ASSERT(rblock->bb_magic == cpu_to_be32(XFS_BMAP_CRC_MAGIC));
  ASSERT(uuid_equal(&rblock->bb_u.l.bb_uuid,
         &mp->m_sb.sb_meta_uuid));
  ASSERT(rblock->bb_u.l.bb_blkno ==
         cpu_to_be64(XFS_BUF_DADDR_NULL));
 } else
  ASSERT(rblock->bb_magic == cpu_to_be32(XFS_BMAP_MAGIC));
 ASSERT(rblock->bb_u.l.bb_leftsib == cpu_to_be64(NULLFSBLOCK));
 ASSERT(rblock->bb_u.l.bb_rightsib == cpu_to_be64(NULLFSBLOCK));
 ASSERT(rblock->bb_level != 0);
 dblock->bb_level = rblock->bb_level;
 dblock->bb_numrecs = rblock->bb_numrecs;
 dmxr = xfs_bmdr_maxrecs(dblocklen, 0);
 fkp = XFS_BMBT_KEY_ADDR(mp, rblock, 1);
 tkp = XFS_BMDR_KEY_ADDR(dblock, 1);
 fpp = XFS_BMAP_BROOT_PTR_ADDR(mp, rblock, 1, rblocklen);
 tpp = XFS_BMDR_PTR_ADDR(dblock, 1, dmxr);
 dmxr = be16_to_cpu(dblock->bb_numrecs);
 memcpy(tkp, fkp, sizeof(*fkp) * dmxr);
 memcpy(tpp, fpp, sizeof(*fpp) * dmxr);
}
