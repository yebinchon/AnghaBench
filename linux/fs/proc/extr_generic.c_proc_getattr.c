
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct proc_dir_entry {scalar_t__ nlink; } ;
struct path {int dentry; } ;
struct kstat {int dummy; } ;
struct inode {int dummy; } ;


 struct proc_dir_entry* PDE (struct inode*) ;
 struct inode* d_inode (int ) ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 int set_nlink (struct inode*,scalar_t__) ;

__attribute__((used)) static int proc_getattr(const struct path *path, struct kstat *stat,
   u32 request_mask, unsigned int query_flags)
{
 struct inode *inode = d_inode(path->dentry);
 struct proc_dir_entry *de = PDE(inode);
 if (de && de->nlink)
  set_nlink(inode, de->nlink);

 generic_fillattr(inode, stat);
 return 0;
}
