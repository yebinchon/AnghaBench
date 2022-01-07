
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct qstr {int dummy; } ;
struct inode {scalar_t__ i_generation; } ;
struct fuse_inode_handle {scalar_t__ nodeid; scalar_t__ generation; } ;
struct fuse_entry_out {int dummy; } ;
struct fuse_conn {int export_support; } ;
struct dentry {int dummy; } ;


 int EIO ;
 int ENOENT ;
 struct dentry* ERR_PTR (int) ;
 int ESTALE ;
 scalar_t__ FUSE_ROOT_ID ;
 int IS_ERR (struct dentry*) ;
 struct qstr QSTR_INIT (char*,int) ;
 struct dentry* d_obtain_alias (struct inode*) ;
 int fuse_inode_eq ;
 int fuse_invalidate_entry_cache (struct dentry*) ;
 int fuse_lookup_name (struct super_block*,scalar_t__,struct qstr const*,struct fuse_entry_out*,struct inode**) ;
 struct fuse_conn* get_fuse_conn_super (struct super_block*) ;
 scalar_t__ get_node_id (struct inode*) ;
 struct inode* ilookup5 (struct super_block*,scalar_t__,int ,scalar_t__*) ;
 int iput (struct inode*) ;

__attribute__((used)) static struct dentry *fuse_get_dentry(struct super_block *sb,
          struct fuse_inode_handle *handle)
{
 struct fuse_conn *fc = get_fuse_conn_super(sb);
 struct inode *inode;
 struct dentry *entry;
 int err = -ESTALE;

 if (handle->nodeid == 0)
  goto out_err;

 inode = ilookup5(sb, handle->nodeid, fuse_inode_eq, &handle->nodeid);
 if (!inode) {
  struct fuse_entry_out outarg;
  const struct qstr name = QSTR_INIT(".", 1);

  if (!fc->export_support)
   goto out_err;

  err = fuse_lookup_name(sb, handle->nodeid, &name, &outarg,
           &inode);
  if (err && err != -ENOENT)
   goto out_err;
  if (err || !inode) {
   err = -ESTALE;
   goto out_err;
  }
  err = -EIO;
  if (get_node_id(inode) != handle->nodeid)
   goto out_iput;
 }
 err = -ESTALE;
 if (inode->i_generation != handle->generation)
  goto out_iput;

 entry = d_obtain_alias(inode);
 if (!IS_ERR(entry) && get_node_id(inode) != FUSE_ROOT_ID)
  fuse_invalidate_entry_cache(entry);

 return entry;

 out_iput:
 iput(inode);
 out_err:
 return ERR_PTR(err);
}
