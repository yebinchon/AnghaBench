
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct hostfs_inode_info {int fd; struct inode vfs_inode; int open_mutex; scalar_t__ mode; } ;


 int GFP_KERNEL_ACCOUNT ;
 int inode_init_once (struct inode*) ;
 struct hostfs_inode_info* kmalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct inode *hostfs_alloc_inode(struct super_block *sb)
{
 struct hostfs_inode_info *hi;

 hi = kmalloc(sizeof(*hi), GFP_KERNEL_ACCOUNT);
 if (hi == ((void*)0))
  return ((void*)0);
 hi->fd = -1;
 hi->mode = 0;
 inode_init_once(&hi->vfs_inode);
 mutex_init(&hi->open_mutex);
 return &hi->vfs_inode;
}
