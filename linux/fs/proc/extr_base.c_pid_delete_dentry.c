
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int d_inode (struct dentry const*) ;
 int proc_inode_is_dead (int ) ;

int pid_delete_dentry(const struct dentry *dentry)
{




 return proc_inode_is_dead(d_inode(dentry));
}
