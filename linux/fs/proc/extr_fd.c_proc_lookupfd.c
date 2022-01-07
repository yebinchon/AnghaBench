
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int proc_fd_instantiate ;
 struct dentry* proc_lookupfd_common (struct inode*,struct dentry*,int ) ;

__attribute__((used)) static struct dentry *proc_lookupfd(struct inode *dir, struct dentry *dentry,
        unsigned int flags)
{
 return proc_lookupfd_common(dir, dentry, proc_fd_instantiate);
}
