
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_agnumber_t ;
struct xfs_perag {int pag_agno; int pag_ref; } ;
struct xfs_mount {int m_perag_tree; } ;


 int _RET_IP_ ;
 int atomic_inc_return (int *) ;
 int radix_tree_gang_lookup_tag (int *,void**,int ,int,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int trace_xfs_perag_get_tag (struct xfs_mount*,int ,int,int ) ;

struct xfs_perag *
xfs_perag_get_tag(
 struct xfs_mount *mp,
 xfs_agnumber_t first,
 int tag)
{
 struct xfs_perag *pag;
 int found;
 int ref;

 rcu_read_lock();
 found = radix_tree_gang_lookup_tag(&mp->m_perag_tree,
     (void **)&pag, first, 1, tag);
 if (found <= 0) {
  rcu_read_unlock();
  return ((void*)0);
 }
 ref = atomic_inc_return(&pag->pag_ref);
 rcu_read_unlock();
 trace_xfs_perag_get_tag(mp, pag->pag_agno, ref, _RET_IP_);
 return pag;
}
