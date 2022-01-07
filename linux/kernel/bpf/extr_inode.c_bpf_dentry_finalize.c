
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mtime; int i_ctime; } ;
struct dentry {int dummy; } ;


 int current_time (struct inode*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dget (struct dentry*) ;

__attribute__((used)) static void bpf_dentry_finalize(struct dentry *dentry, struct inode *inode,
    struct inode *dir)
{
 d_instantiate(dentry, inode);
 dget(dentry);

 dir->i_mtime = current_time(dir);
 dir->i_ctime = dir->i_mtime;
}
