
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_fsize_t ;
struct TYPE_2__ {scalar_t__ di_size; } ;
struct xfs_inode {TYPE_1__ i_d; } ;


 int VFS_I (struct xfs_inode*) ;
 scalar_t__ i_size_read (int ) ;

__attribute__((used)) static inline xfs_fsize_t
xfs_new_eof(struct xfs_inode *ip, xfs_fsize_t new_size)
{
 xfs_fsize_t i_size = i_size_read(VFS_I(ip));

 if (new_size > i_size || new_size < 0)
  new_size = i_size;
 return new_size > ip->i_d.di_size ? new_size : 0;
}
