
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_trans_res {int member_0; } ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;


 int XFS_TRANS_NO_WRITECOUNT ;
 int xfs_trans_alloc (struct xfs_mount*,struct xfs_trans_res*,int ,int ,int ,struct xfs_trans**) ;

int
xfs_trans_alloc_empty(
 struct xfs_mount *mp,
 struct xfs_trans **tpp)
{
 struct xfs_trans_res resv = {0};

 return xfs_trans_alloc(mp, &resv, 0, 0, XFS_TRANS_NO_WRITECOUNT, tpp);
}
