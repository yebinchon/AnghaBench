
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_inode_params {struct inode* newinode; struct dentry* upperdentry; } ;
struct inode {int dummy; } ;
struct dentry {int d_sb; int d_parent; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int WARN_ON (int) ;
 int d_drop (struct dentry*) ;
 scalar_t__ d_inode (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dput (struct dentry*) ;
 int inc_nlink (struct inode*) ;
 int ovl_dentry_set_upper_alias (struct dentry*) ;
 int ovl_dir_modified (int ,int) ;
 struct inode* ovl_get_inode (int ,struct ovl_inode_params*) ;
 scalar_t__ ovl_inode_real (struct inode*) ;
 int pr_warn_ratelimited (char*,struct dentry*) ;

__attribute__((used)) static int ovl_instantiate(struct dentry *dentry, struct inode *inode,
      struct dentry *newdentry, bool hardlink)
{
 struct ovl_inode_params oip = {
  .upperdentry = newdentry,
  .newinode = inode,
 };

 ovl_dir_modified(dentry->d_parent, 0);
 ovl_dentry_set_upper_alias(dentry);
 if (!hardlink) {
  inode = ovl_get_inode(dentry->d_sb, &oip);
  if (IS_ERR(inode))
   return PTR_ERR(inode);
 } else {
  WARN_ON(ovl_inode_real(inode) != d_inode(newdentry));
  dput(newdentry);
  inc_nlink(inode);
 }

 d_instantiate(dentry, inode);
 if (inode != oip.newinode) {
  pr_warn_ratelimited("overlayfs: newly created inode found in cache (%pd2)\n",
        dentry);
 }


 if (hardlink)
  d_drop(dentry);

 return 0;
}
