
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_agnumber_t ;
struct xfs_perag {int pag_ref; } ;
struct xfs_mount {int m_perag_tree; } ;


 int ASSERT (int) ;
 int _RET_IP_ ;
 int atomic_inc_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 struct xfs_perag* radix_tree_lookup (int *,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int trace_xfs_perag_get (struct xfs_mount*,int ,int,int ) ;

struct xfs_perag *
xfs_perag_get(
 struct xfs_mount *mp,
 xfs_agnumber_t agno)
{
 struct xfs_perag *pag;
 int ref = 0;

 rcu_read_lock();
 pag = radix_tree_lookup(&mp->m_perag_tree, agno);
 if (pag) {
  ASSERT(atomic_read(&pag->pag_ref) >= 0);
  ref = atomic_inc_return(&pag->pag_ref);
 }
 rcu_read_unlock();
 trace_xfs_perag_get(mp, agno, ref, _RET_IP_);
 return pag;
}
