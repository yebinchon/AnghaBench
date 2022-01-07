
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int fuse_invalidate_attr (struct inode*) ;
 int inode_maybe_inc_iversion (struct inode*,int) ;

__attribute__((used)) static void fuse_dir_changed(struct inode *dir)
{
 fuse_invalidate_attr(dir);
 inode_maybe_inc_iversion(dir, 0);
}
