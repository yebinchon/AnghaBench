
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct integrity_iint_cache {int flags; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 int FILE_CHECK ;
 int IMA_NEW_FILE ;
 int MAY_ACCESS ;
 int ima_must_appraise (struct inode*,int ,int ) ;
 struct integrity_iint_cache* integrity_inode_get (struct inode*) ;

void ima_post_path_mknod(struct dentry *dentry)
{
 struct integrity_iint_cache *iint;
 struct inode *inode = dentry->d_inode;
 int must_appraise;

 must_appraise = ima_must_appraise(inode, MAY_ACCESS, FILE_CHECK);
 if (!must_appraise)
  return;


 iint = integrity_inode_get(inode);
 if (!iint)
  return;


 iint->flags |= IMA_NEW_FILE;
}
