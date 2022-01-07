
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_filelist {int name; } ;
struct qstr {int len; int name; } ;
struct inode {int i_mode; } ;
struct dentry {int dummy; } ;


 int BUG () ;

 int S_IFMT ;

 int __rpc_rmdir (struct inode*,struct dentry*) ;
 int __rpc_unlink (struct inode*,struct dentry*) ;
 struct dentry* d_hash_and_lookup (struct dentry*,struct qstr*) ;
 struct inode* d_inode (struct dentry*) ;
 scalar_t__ d_really_is_negative (struct dentry*) ;
 int dput (struct dentry*) ;
 int strlen (int ) ;

__attribute__((used)) static void __rpc_depopulate(struct dentry *parent,
        const struct rpc_filelist *files,
        int start, int eof)
{
 struct inode *dir = d_inode(parent);
 struct dentry *dentry;
 struct qstr name;
 int i;

 for (i = start; i < eof; i++) {
  name.name = files[i].name;
  name.len = strlen(files[i].name);
  dentry = d_hash_and_lookup(parent, &name);

  if (dentry == ((void*)0))
   continue;
  if (d_really_is_negative(dentry))
   goto next;
  switch (d_inode(dentry)->i_mode & S_IFMT) {
   default:
    BUG();
   case 128:
    __rpc_unlink(dir, dentry);
    break;
   case 129:
    __rpc_rmdir(dir, dentry);
  }
next:
  dput(dentry);
 }
}
