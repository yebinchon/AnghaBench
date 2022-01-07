
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_reclaim_work; int m_reclaim_workqueue; int m_perag_tree; } ;


 int XFS_ICI_RECLAIM_TAG ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 scalar_t__ radix_tree_tagged (int *,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int xfs_syncd_centisecs ;

__attribute__((used)) static void
xfs_reclaim_work_queue(
 struct xfs_mount *mp)
{

 rcu_read_lock();
 if (radix_tree_tagged(&mp->m_perag_tree, XFS_ICI_RECLAIM_TAG)) {
  queue_delayed_work(mp->m_reclaim_workqueue, &mp->m_reclaim_work,
   msecs_to_jiffies(xfs_syncd_centisecs / 6 * 10));
 }
 rcu_read_unlock();
}
