
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xfs_fsize_t ;
struct TYPE_4__ {int di_size; } ;
struct xfs_inode {TYPE_1__ i_d; } ;
struct TYPE_5__ {int i_mode; } ;


 scalar_t__ S_ISREG (int ) ;
 TYPE_2__* VFS_I (struct xfs_inode*) ;
 int i_size_read (TYPE_2__*) ;

__attribute__((used)) static inline xfs_fsize_t XFS_ISIZE(struct xfs_inode *ip)
{
 if (S_ISREG(VFS_I(ip)->i_mode))
  return i_size_read(VFS_I(ip));
 return ip->i_d.di_size;
}
