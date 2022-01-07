
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dqid_t ;
struct xfs_quotainfo {int qi_tree_lock; int qi_dquots; } ;
struct xfs_mount {int dummy; } ;
struct xfs_dquot {int q_nrefs; } ;
struct radix_tree_root {int dummy; } ;


 int EEXIST ;
 int WARN_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radix_tree_insert (struct radix_tree_root*,int ,struct xfs_dquot*) ;
 int trace_xfs_dqget_dup (struct xfs_dquot*) ;
 scalar_t__ unlikely (int) ;
 int xfs_dqlock (struct xfs_dquot*) ;

__attribute__((used)) static int
xfs_qm_dqget_cache_insert(
 struct xfs_mount *mp,
 struct xfs_quotainfo *qi,
 struct radix_tree_root *tree,
 xfs_dqid_t id,
 struct xfs_dquot *dqp)
{
 int error;

 mutex_lock(&qi->qi_tree_lock);
 error = radix_tree_insert(tree, id, dqp);
 if (unlikely(error)) {

  WARN_ON(error != -EEXIST);
  mutex_unlock(&qi->qi_tree_lock);
  trace_xfs_dqget_dup(dqp);
  return error;
 }


 xfs_dqlock(dqp);
 dqp->q_nrefs = 1;

 qi->qi_dquots++;
 mutex_unlock(&qi->qi_tree_lock);

 return 0;
}
