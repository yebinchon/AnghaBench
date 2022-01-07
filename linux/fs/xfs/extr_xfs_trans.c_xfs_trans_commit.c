
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_trans {int dummy; } ;


 int __xfs_trans_commit (struct xfs_trans*,int) ;

int
xfs_trans_commit(
 struct xfs_trans *tp)
{
 return __xfs_trans_commit(tp, 0);
}
