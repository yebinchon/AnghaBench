
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_extlen_t ;
typedef int xfs_agnumber_t ;
typedef int xfs_agblock_t ;
struct xfs_trans {struct xfs_mount* t_mountp; } ;
struct xfs_owner_info {int dummy; } ;
struct xfs_mount {int m_sb; } ;
struct xfs_buf {int dummy; } ;
struct xfs_btree_cur {int dummy; } ;


 int xfs_btree_del_cursor (struct xfs_btree_cur*,int) ;
 int xfs_rmap_unmap (struct xfs_btree_cur*,int ,int ,int,struct xfs_owner_info const*) ;
 struct xfs_btree_cur* xfs_rmapbt_init_cursor (struct xfs_mount*,struct xfs_trans*,struct xfs_buf*,int ) ;
 int xfs_sb_version_hasrmapbt (int *) ;

int
xfs_rmap_free(
 struct xfs_trans *tp,
 struct xfs_buf *agbp,
 xfs_agnumber_t agno,
 xfs_agblock_t bno,
 xfs_extlen_t len,
 const struct xfs_owner_info *oinfo)
{
 struct xfs_mount *mp = tp->t_mountp;
 struct xfs_btree_cur *cur;
 int error;

 if (!xfs_sb_version_hasrmapbt(&mp->m_sb))
  return 0;

 cur = xfs_rmapbt_init_cursor(mp, tp, agbp, agno);

 error = xfs_rmap_unmap(cur, bno, len, 0, oinfo);

 xfs_btree_del_cursor(cur, error);
 return error;
}
