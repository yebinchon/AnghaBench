
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {char* i_link; int * i_op; int i_sb; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int GFP_USER ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int S_IFLNK ;
 int S_IRWXUGO ;
 int __GFP_NOWARN ;
 int bpf_dentry_finalize (struct dentry*,struct inode*,struct inode*) ;
 struct inode* bpf_get_inode (int ,struct inode*,int) ;
 int kfree (char*) ;
 char* kstrdup (char const*,int) ;
 int simple_symlink_inode_operations ;

__attribute__((used)) static int bpf_symlink(struct inode *dir, struct dentry *dentry,
         const char *target)
{
 char *link = kstrdup(target, GFP_USER | __GFP_NOWARN);
 struct inode *inode;

 if (!link)
  return -ENOMEM;

 inode = bpf_get_inode(dir->i_sb, dir, S_IRWXUGO | S_IFLNK);
 if (IS_ERR(inode)) {
  kfree(link);
  return PTR_ERR(inode);
 }

 inode->i_op = &simple_symlink_inode_operations;
 inode->i_link = link;

 bpf_dentry_finalize(dentry, inode, dir);
 return 0;
}
