
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_perag {int pag_agno; int pag_mount; int pag_ref; } ;


 int ASSERT (int) ;
 int _RET_IP_ ;
 int atomic_dec_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 int trace_xfs_perag_put (int ,int ,int,int ) ;

void
xfs_perag_put(
 struct xfs_perag *pag)
{
 int ref;

 ASSERT(atomic_read(&pag->pag_ref) > 0);
 ref = atomic_dec_return(&pag->pag_ref);
 trace_xfs_perag_put(pag->pag_mount, pag->pag_agno, ref, _RET_IP_);
}
