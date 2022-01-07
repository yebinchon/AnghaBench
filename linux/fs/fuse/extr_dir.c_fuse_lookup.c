
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct fuse_entry_out {int dummy; } ;
struct dentry {int d_name; } ;


 int EIO ;
 int ENOENT ;
 struct dentry* ERR_PTR (int) ;
 scalar_t__ FUSE_ROOT_ID ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 int fuse_advise_use_readdirplus (struct inode*) ;
 int fuse_change_entry_timeout (struct dentry*,struct fuse_entry_out*) ;
 int fuse_invalidate_entry_cache (struct dentry*) ;
 int fuse_lock_inode (struct inode*) ;
 int fuse_lookup_name (int ,scalar_t__,int *,struct fuse_entry_out*,struct inode**) ;
 int fuse_unlock_inode (struct inode*,int) ;
 scalar_t__ get_node_id (struct inode*) ;
 int iput (struct inode*) ;

__attribute__((used)) static struct dentry *fuse_lookup(struct inode *dir, struct dentry *entry,
      unsigned int flags)
{
 int err;
 struct fuse_entry_out outarg;
 struct inode *inode;
 struct dentry *newent;
 bool outarg_valid = 1;
 bool locked;

 locked = fuse_lock_inode(dir);
 err = fuse_lookup_name(dir->i_sb, get_node_id(dir), &entry->d_name,
          &outarg, &inode);
 fuse_unlock_inode(dir, locked);
 if (err == -ENOENT) {
  outarg_valid = 0;
  err = 0;
 }
 if (err)
  goto out_err;

 err = -EIO;
 if (inode && get_node_id(inode) == FUSE_ROOT_ID)
  goto out_iput;

 newent = d_splice_alias(inode, entry);
 err = PTR_ERR(newent);
 if (IS_ERR(newent))
  goto out_err;

 entry = newent ? newent : entry;
 if (outarg_valid)
  fuse_change_entry_timeout(entry, &outarg);
 else
  fuse_invalidate_entry_cache(entry);

 if (inode)
  fuse_advise_use_readdirplus(dir);
 return newent;

 out_iput:
 iput(inode);
 out_err:
 return ERR_PTR(err);
}
