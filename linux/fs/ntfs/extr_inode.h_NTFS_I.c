
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int ntfs_inode ;


 int big_ntfs_inode ;
 scalar_t__ container_of (struct inode*,int ,int ) ;
 int vfs_inode ;

__attribute__((used)) static inline ntfs_inode *NTFS_I(struct inode *inode)
{
 return (ntfs_inode *)container_of(inode, big_ntfs_inode, vfs_inode);
}
