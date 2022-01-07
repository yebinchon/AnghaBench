
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct integrity_iint_cache {int atomic_flags; } ;
struct inode {int i_opflags; int i_mode; } ;
struct dentry {int dummy; } ;


 int IMA_APPRAISE ;
 int IMA_CHANGE_ATTR ;
 int IMA_UPDATE_XATTR ;
 int IOP_XATTR ;
 int MAY_ACCESS ;
 int POST_SETATTR ;
 int S_ISREG (int ) ;
 int XATTR_NAME_IMA ;
 int __vfs_removexattr (struct dentry*,int ) ;
 int clear_bit (int ,int *) ;
 struct inode* d_backing_inode (struct dentry*) ;
 int ima_must_appraise (struct inode*,int ,int ) ;
 int ima_policy_flag ;
 struct integrity_iint_cache* integrity_iint_find (struct inode*) ;
 int set_bit (int ,int *) ;

void ima_inode_post_setattr(struct dentry *dentry)
{
 struct inode *inode = d_backing_inode(dentry);
 struct integrity_iint_cache *iint;
 int action;

 if (!(ima_policy_flag & IMA_APPRAISE) || !S_ISREG(inode->i_mode)
     || !(inode->i_opflags & IOP_XATTR))
  return;

 action = ima_must_appraise(inode, MAY_ACCESS, POST_SETATTR);
 if (!action)
  __vfs_removexattr(dentry, XATTR_NAME_IMA);
 iint = integrity_iint_find(inode);
 if (iint) {
  set_bit(IMA_CHANGE_ATTR, &iint->atomic_flags);
  if (!action)
   clear_bit(IMA_UPDATE_XATTR, &iint->atomic_flags);
 }
}
