
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reiserfs_transaction_handle {int dummy; } ;
struct inode {scalar_t__ i_size; int i_sb; int i_gid; int i_uid; } ;
struct iattr {unsigned int ia_valid; scalar_t__ ia_size; int ia_gid; int ia_uid; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_prealloc_count; int tailpack; } ;


 int ATTR_CTIME ;
 unsigned int ATTR_GID ;
 unsigned int ATTR_KILL_SGID ;
 unsigned int ATTR_KILL_SUID ;
 int ATTR_MODE ;
 int ATTR_MTIME ;
 int ATTR_SIZE ;
 unsigned int ATTR_UID ;
 int EFBIG ;
 int EINVAL ;
 scalar_t__ KEY_FORMAT_3_5 ;
 scalar_t__ MAX_NON_LFS ;
 TYPE_1__* REISERFS_I (struct inode*) ;
 int REISERFS_QUOTA_DEL_BLOCKS (int ) ;
 int REISERFS_QUOTA_INIT_BLOCKS (int ) ;
 scalar_t__ STAT_DATA_V1 ;
 struct inode* d_inode (struct dentry*) ;
 int dquot_initialize (struct inode*) ;
 int dquot_transfer (struct inode*,struct iattr*) ;
 int from_kgid (int *,int ) ;
 int from_kuid (int *,int ) ;
 int generic_cont_expand_simple (struct inode*,scalar_t__) ;
 scalar_t__ get_inode_item_key_version (struct inode*) ;
 scalar_t__ get_inode_sd_version (struct inode*) ;
 int gid_eq (int ,int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 int init_user_ns ;
 int inode_dio_wait (struct inode*) ;
 int inode_newsize_ok (struct inode*,scalar_t__) ;
 scalar_t__ is_quota_modification (struct inode*,struct iattr*) ;
 int journal_begin (struct reiserfs_transaction_handle*,int ,int) ;
 int journal_end (struct reiserfs_transaction_handle*) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reiserfs_acl_chmod (struct inode*) ;
 int reiserfs_chown_xattrs (struct inode*,struct iattr*) ;
 int reiserfs_discard_prealloc (struct reiserfs_transaction_handle*,struct inode*) ;
 scalar_t__ reiserfs_posixacl (int ) ;
 int reiserfs_truncate_file (struct inode*,int) ;
 int reiserfs_write_lock (int ) ;
 int reiserfs_write_unlock (int ) ;
 int setattr_copy (struct inode*,struct iattr*) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;
 int truncate_setsize (struct inode*,scalar_t__) ;
 int uid_eq (int ,int ) ;

int reiserfs_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = d_inode(dentry);
 unsigned int ia_valid;
 int error;

 error = setattr_prepare(dentry, attr);
 if (error)
  return error;


 ia_valid = attr->ia_valid &= ~(ATTR_KILL_SUID|ATTR_KILL_SGID);

 if (is_quota_modification(inode, attr)) {
  error = dquot_initialize(inode);
  if (error)
   return error;
 }
 reiserfs_write_lock(inode->i_sb);
 if (attr->ia_valid & ATTR_SIZE) {




  if (get_inode_item_key_version(inode) == KEY_FORMAT_3_5 &&
      attr->ia_size > MAX_NON_LFS) {
   reiserfs_write_unlock(inode->i_sb);
   error = -EFBIG;
   goto out;
  }

  inode_dio_wait(inode);


  if (attr->ia_size > inode->i_size) {
   error = generic_cont_expand_simple(inode, attr->ia_size);
   if (REISERFS_I(inode)->i_prealloc_count > 0) {
    int err;
    struct reiserfs_transaction_handle th;

    err = journal_begin(&th, inode->i_sb, 4);
    if (!err) {
     reiserfs_discard_prealloc(&th, inode);
     err = journal_end(&th);
    }
    if (err)
     error = err;
   }
   if (error) {
    reiserfs_write_unlock(inode->i_sb);
    goto out;
   }




   attr->ia_valid |= (ATTR_MTIME | ATTR_CTIME);
  }
 }
 reiserfs_write_unlock(inode->i_sb);

 if ((((attr->ia_valid & ATTR_UID) && (from_kuid(&init_user_ns, attr->ia_uid) & ~0xffff)) ||
      ((attr->ia_valid & ATTR_GID) && (from_kgid(&init_user_ns, attr->ia_gid) & ~0xffff))) &&
     (get_inode_sd_version(inode) == STAT_DATA_V1)) {

  error = -EINVAL;
  goto out;
 }

 if ((ia_valid & ATTR_UID && !uid_eq(attr->ia_uid, inode->i_uid)) ||
     (ia_valid & ATTR_GID && !gid_eq(attr->ia_gid, inode->i_gid))) {
  struct reiserfs_transaction_handle th;
  int jbegin_count =
      2 *
      (REISERFS_QUOTA_INIT_BLOCKS(inode->i_sb) +
       REISERFS_QUOTA_DEL_BLOCKS(inode->i_sb)) +
      2;

  error = reiserfs_chown_xattrs(inode, attr);

  if (error)
   return error;





  reiserfs_write_lock(inode->i_sb);
  error = journal_begin(&th, inode->i_sb, jbegin_count);
  reiserfs_write_unlock(inode->i_sb);
  if (error)
   goto out;
  error = dquot_transfer(inode, attr);
  reiserfs_write_lock(inode->i_sb);
  if (error) {
   journal_end(&th);
   reiserfs_write_unlock(inode->i_sb);
   goto out;
  }





  if (attr->ia_valid & ATTR_UID)
   inode->i_uid = attr->ia_uid;
  if (attr->ia_valid & ATTR_GID)
   inode->i_gid = attr->ia_gid;
  mark_inode_dirty(inode);
  error = journal_end(&th);
  reiserfs_write_unlock(inode->i_sb);
  if (error)
   goto out;
 }

 if ((attr->ia_valid & ATTR_SIZE) &&
     attr->ia_size != i_size_read(inode)) {
  error = inode_newsize_ok(inode, attr->ia_size);
  if (!error) {




   mutex_lock(&REISERFS_I(inode)->tailpack);
   truncate_setsize(inode, attr->ia_size);
   reiserfs_truncate_file(inode, 1);
   mutex_unlock(&REISERFS_I(inode)->tailpack);
  }
 }

 if (!error) {
  setattr_copy(inode, attr);
  mark_inode_dirty(inode);
 }

 if (!error && reiserfs_posixacl(inode->i_sb)) {
  if (attr->ia_valid & ATTR_MODE)
   error = reiserfs_acl_chmod(inode);
 }

out:
 return error;
}
