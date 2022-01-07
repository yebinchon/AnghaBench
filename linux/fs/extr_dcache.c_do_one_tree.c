
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int d_drop (struct dentry*) ;
 int d_walk (struct dentry*,struct dentry*,int ) ;
 int dput (struct dentry*) ;
 int shrink_dcache_parent (struct dentry*) ;
 int umount_check ;

__attribute__((used)) static void do_one_tree(struct dentry *dentry)
{
 shrink_dcache_parent(dentry);
 d_walk(dentry, dentry, umount_check);
 d_drop(dentry);
 dput(dentry);
}
