
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dqid_t ;
struct xfs_quotainfo {int qi_tree_lock; } ;
struct xfs_mount {int dummy; } ;
struct xfs_dquot {int dq_flags; int q_nrefs; } ;
struct radix_tree_root {int dummy; } ;


 int XFS_DQ_FREEING ;
 int XFS_STATS_INC (struct xfs_mount*,int ) ;
 int delay (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct xfs_dquot* radix_tree_lookup (struct radix_tree_root*,int ) ;
 int trace_xfs_dqget_freeing (struct xfs_dquot*) ;
 int trace_xfs_dqget_hit (struct xfs_dquot*) ;
 int xfs_dqlock (struct xfs_dquot*) ;
 int xfs_dqunlock (struct xfs_dquot*) ;
 int xs_qm_dqcachehits ;
 int xs_qm_dqcachemisses ;

__attribute__((used)) static struct xfs_dquot *
xfs_qm_dqget_cache_lookup(
 struct xfs_mount *mp,
 struct xfs_quotainfo *qi,
 struct radix_tree_root *tree,
 xfs_dqid_t id)
{
 struct xfs_dquot *dqp;

restart:
 mutex_lock(&qi->qi_tree_lock);
 dqp = radix_tree_lookup(tree, id);
 if (!dqp) {
  mutex_unlock(&qi->qi_tree_lock);
  XFS_STATS_INC(mp, xs_qm_dqcachemisses);
  return ((void*)0);
 }

 xfs_dqlock(dqp);
 if (dqp->dq_flags & XFS_DQ_FREEING) {
  xfs_dqunlock(dqp);
  mutex_unlock(&qi->qi_tree_lock);
  trace_xfs_dqget_freeing(dqp);
  delay(1);
  goto restart;
 }

 dqp->q_nrefs++;
 mutex_unlock(&qi->qi_tree_lock);

 trace_xfs_dqget_hit(dqp);
 XFS_STATS_INC(mp, xs_qm_dqcachehits);
 return dqp;
}
