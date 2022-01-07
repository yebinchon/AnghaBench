
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_off_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;
struct TYPE_2__ {int tr_fsyncts; } ;


 TYPE_1__* M_RES (struct xfs_mount*) ;
 int __xfs_setfilesize (struct xfs_inode*,struct xfs_trans*,int ,size_t) ;
 int xfs_trans_alloc (struct xfs_mount*,int *,int ,int ,int ,struct xfs_trans**) ;

int
xfs_setfilesize(
 struct xfs_inode *ip,
 xfs_off_t offset,
 size_t size)
{
 struct xfs_mount *mp = ip->i_mount;
 struct xfs_trans *tp;
 int error;

 error = xfs_trans_alloc(mp, &M_RES(mp)->tr_fsyncts, 0, 0, 0, &tp);
 if (error)
  return error;

 return __xfs_setfilesize(ip, tp, offset, size);
}
