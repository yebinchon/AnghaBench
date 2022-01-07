
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef int ntfs_inode ;
struct TYPE_2__ {struct inode vfs_inode; } ;
typedef TYPE_1__ big_ntfs_inode ;



__attribute__((used)) static inline struct inode *VFS_I(ntfs_inode *ni)
{
 return &((big_ntfs_inode *)ni)->vfs_inode;
}
