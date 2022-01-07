
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dqid_t ;
typedef int uint ;
struct xfs_quotainfo {int dummy; } ;
struct xfs_mount {struct xfs_quotainfo* m_quotainfo; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;
struct xfs_dquot {int dummy; } ;
struct radix_tree_root {int dummy; } ;


 int ASSERT (int ) ;
 int ESRCH ;
 int XFS_ILOCK_EXCL ;
 int XFS_STATS_INC (struct xfs_mount*,int ) ;
 int trace_xfs_dqget_miss (struct xfs_dquot*) ;
 int xfs_dqlock (struct xfs_dquot*) ;
 struct radix_tree_root* xfs_dquot_tree (struct xfs_quotainfo*,int ) ;
 int xfs_ilock (struct xfs_inode*,int ) ;
 struct xfs_dquot* xfs_inode_dquot (struct xfs_inode*,int ) ;
 int xfs_isilocked (struct xfs_inode*,int ) ;
 int xfs_iunlock (struct xfs_inode*,int ) ;
 int xfs_qm_dqdestroy (struct xfs_dquot*) ;
 int xfs_qm_dqget_cache_insert (struct xfs_mount*,struct xfs_quotainfo*,struct radix_tree_root*,int ,struct xfs_dquot*) ;
 struct xfs_dquot* xfs_qm_dqget_cache_lookup (struct xfs_mount*,struct xfs_quotainfo*,struct radix_tree_root*,int ) ;
 int xfs_qm_dqget_checks (struct xfs_mount*,int ) ;
 int xfs_qm_dqread (struct xfs_mount*,int ,int ,int,struct xfs_dquot**) ;
 int xfs_qm_id_for_quotatype (struct xfs_inode*,int ) ;
 scalar_t__ xfs_this_quota_on (struct xfs_mount*,int ) ;
 int xs_qm_dquot_dups ;

int
xfs_qm_dqget_inode(
 struct xfs_inode *ip,
 uint type,
 bool can_alloc,
 struct xfs_dquot **O_dqpp)
{
 struct xfs_mount *mp = ip->i_mount;
 struct xfs_quotainfo *qi = mp->m_quotainfo;
 struct radix_tree_root *tree = xfs_dquot_tree(qi, type);
 struct xfs_dquot *dqp;
 xfs_dqid_t id;
 int error;

 error = xfs_qm_dqget_checks(mp, type);
 if (error)
  return error;

 ASSERT(xfs_isilocked(ip, XFS_ILOCK_EXCL));
 ASSERT(xfs_inode_dquot(ip, type) == ((void*)0));

 id = xfs_qm_id_for_quotatype(ip, type);

restart:
 dqp = xfs_qm_dqget_cache_lookup(mp, qi, tree, id);
 if (dqp) {
  *O_dqpp = dqp;
  return 0;
 }
 xfs_iunlock(ip, XFS_ILOCK_EXCL);
 error = xfs_qm_dqread(mp, id, type, can_alloc, &dqp);
 xfs_ilock(ip, XFS_ILOCK_EXCL);
 if (error)
  return error;





 if (xfs_this_quota_on(mp, type)) {
  struct xfs_dquot *dqp1;

  dqp1 = xfs_inode_dquot(ip, type);
  if (dqp1) {
   xfs_qm_dqdestroy(dqp);
   dqp = dqp1;
   xfs_dqlock(dqp);
   goto dqret;
  }
 } else {

  xfs_qm_dqdestroy(dqp);
  return -ESRCH;
 }

 error = xfs_qm_dqget_cache_insert(mp, qi, tree, id, dqp);
 if (error) {




  xfs_qm_dqdestroy(dqp);
  XFS_STATS_INC(mp, xs_qm_dquot_dups);
  goto restart;
 }

dqret:
 ASSERT(xfs_isilocked(ip, XFS_ILOCK_EXCL));
 trace_xfs_dqget_miss(dqp);
 *O_dqpp = dqp;
 return 0;
}
