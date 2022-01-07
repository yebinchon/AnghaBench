
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_filelist {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int I_MUTEX_CHILD ;
 int __rpc_depopulate (struct dentry*,struct rpc_filelist const*,int,int) ;
 struct inode* d_inode (struct dentry*) ;
 int inode_lock_nested (struct inode*,int ) ;
 int inode_unlock (struct inode*) ;

__attribute__((used)) static void rpc_depopulate(struct dentry *parent,
      const struct rpc_filelist *files,
      int start, int eof)
{
 struct inode *dir = d_inode(parent);

 inode_lock_nested(dir, I_MUTEX_CHILD);
 __rpc_depopulate(parent, files, start, eof);
 inode_unlock(dir);
}
