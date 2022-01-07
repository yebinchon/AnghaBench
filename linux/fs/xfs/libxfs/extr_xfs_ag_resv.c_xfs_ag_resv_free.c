
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_perag {int dummy; } ;


 int XFS_AG_RESV_METADATA ;
 int XFS_AG_RESV_RMAPBT ;
 int __xfs_ag_resv_free (struct xfs_perag*,int ) ;

int
xfs_ag_resv_free(
 struct xfs_perag *pag)
{
 int error;
 int err2;

 error = __xfs_ag_resv_free(pag, XFS_AG_RESV_RMAPBT);
 err2 = __xfs_ag_resv_free(pag, XFS_AG_RESV_METADATA);
 if (err2 && !error)
  error = err2;
 return error;
}
