
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int name; int len; } ;
struct inode {int i_nlink; int i_ino; int i_mode; } ;
struct dentry {int d_sb; struct inode* d_inode; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int I_MUTEX_PARENT ;
 int PTR_ERR (struct dentry*) ;
 int S_ISDIR (int ) ;
 struct inode* d_inode (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_lock_nested (struct inode*,int ) ;
 int inode_unlock (struct inode*) ;
 int kfree (int ) ;
 struct dentry* lookup_one_len (int ,struct dentry*,int ) ;
 int ovl_cleanup (struct inode*,struct dentry*) ;
 int ovl_cleanup_and_whiteout (struct dentry*,struct inode*,struct dentry*) ;
 struct dentry* ovl_dentry_lower (struct dentry*) ;
 struct dentry* ovl_dentry_upper (struct dentry*) ;
 int ovl_get_index_name (struct dentry*,struct qstr*) ;
 scalar_t__ ovl_index_all (int ) ;
 struct dentry* ovl_indexdir (int ) ;
 int ovl_set_nlink_upper (struct dentry*) ;
 int pr_err (char*,struct dentry*,int) ;
 int pr_warn_ratelimited (char*,struct dentry*,int ,int) ;
 int set_nlink (struct inode*,int) ;

__attribute__((used)) static void ovl_cleanup_index(struct dentry *dentry)
{
 struct dentry *indexdir = ovl_indexdir(dentry->d_sb);
 struct inode *dir = indexdir->d_inode;
 struct dentry *lowerdentry = ovl_dentry_lower(dentry);
 struct dentry *upperdentry = ovl_dentry_upper(dentry);
 struct dentry *index = ((void*)0);
 struct inode *inode;
 struct qstr name = { };
 int err;

 err = ovl_get_index_name(lowerdentry, &name);
 if (err)
  goto fail;

 inode = d_inode(upperdentry);
 if (!S_ISDIR(inode->i_mode) && inode->i_nlink != 1) {
  pr_warn_ratelimited("overlayfs: cleanup linked index (%pd2, ino=%lu, nlink=%u)\n",
        upperdentry, inode->i_ino, inode->i_nlink);
  set_nlink(d_inode(dentry), inode->i_nlink - 1);
  ovl_set_nlink_upper(dentry);
  goto out;
 }

 inode_lock_nested(dir, I_MUTEX_PARENT);
 index = lookup_one_len(name.name, indexdir, name.len);
 err = PTR_ERR(index);
 if (IS_ERR(index)) {
  index = ((void*)0);
 } else if (ovl_index_all(dentry->d_sb)) {

  err = ovl_cleanup_and_whiteout(indexdir, dir, index);
 } else {

  err = ovl_cleanup(dir, index);
 }

 inode_unlock(dir);
 if (err)
  goto fail;

out:
 kfree(name.name);
 dput(index);
 return;

fail:
 pr_err("overlayfs: cleanup index of '%pd2' failed (%i)\n", dentry, err);
 goto out;
}
