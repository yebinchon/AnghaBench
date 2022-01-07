
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_mount_t ;
typedef int xfs_agnumber_t ;
struct xfs_perag {int pagf_fstrms; } ;


 int atomic_inc_return (int *) ;
 struct xfs_perag* xfs_perag_get (int *,int ) ;
 int xfs_perag_put (struct xfs_perag*) ;

__attribute__((used)) static int
xfs_filestream_get_ag(
 xfs_mount_t *mp,
 xfs_agnumber_t agno)
{
 struct xfs_perag *pag;
 int ret;

 pag = xfs_perag_get(mp, agno);
 ret = atomic_inc_return(&pag->pagf_fstrms);
 xfs_perag_put(pag);
 return ret;
}
