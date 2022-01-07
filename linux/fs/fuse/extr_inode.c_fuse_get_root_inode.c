
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_attr {unsigned int mode; int nlink; int ino; } ;
typedef int attr ;


 int FUSE_ROOT_ID ;
 struct inode* fuse_iget (struct super_block*,int,int ,struct fuse_attr*,int ,int ) ;
 int memset (struct fuse_attr*,int ,int) ;

__attribute__((used)) static struct inode *fuse_get_root_inode(struct super_block *sb, unsigned mode)
{
 struct fuse_attr attr;
 memset(&attr, 0, sizeof(attr));

 attr.mode = mode;
 attr.ino = FUSE_ROOT_ID;
 attr.nlink = 1;
 return fuse_iget(sb, 1, 0, &attr, 0, 0);
}
