
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
struct ocfs2_super {int sb; } ;
struct ocfs2_security_xattr_info {int enable; int value; } ;
struct ocfs2_dir_lookup_result {int * member_0; } ;
struct ocfs2_dinode {int dummy; } ;
struct ocfs2_dentry_lock {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {scalar_t__ i_nlink; int i_sb; } ;
struct TYPE_3__ {int len; int name; } ;
struct dentry {struct ocfs2_dentry_lock* d_fsdata; TYPE_1__ d_name; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int sigset_t ;
typedef struct inode handle_t ;
typedef scalar_t__ dev_t ;
struct TYPE_4__ {int ip_flags; scalar_t__ ip_blkno; } ;


 int EMLINK ;
 int ENOENT ;
 int ENOSPC ;
 int EOPNOTSUPP ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 TYPE_2__* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_SKIP_ORPHAN_DIR ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 int brelse (struct buffer_head*) ;
 int clear_nlink (struct inode*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dquot_alloc_inode (struct inode*) ;
 int dquot_free_inode (struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int inc_nlink (struct inode*) ;
 int insert_inode_hash (struct inode*) ;
 int iput (struct inode*) ;
 int kfree (int ) ;
 int mlog_errno (int) ;
 int ocfs2_add_entry (struct inode*,struct dentry*,struct inode*,scalar_t__,struct buffer_head*,struct ocfs2_dir_lookup_result*) ;
 int ocfs2_add_links_count (struct ocfs2_dinode*,int) ;
 int ocfs2_block_signals (int *) ;
 int ocfs2_calc_xattr_init (struct inode*,struct buffer_head*,int ,struct ocfs2_security_xattr_info*,int*,int*,int*) ;
 int ocfs2_check_dir_for_entry (struct inode*,int ,int ) ;
 int ocfs2_cleanup_add_entry_failure (struct ocfs2_super*,struct dentry*,struct inode*) ;
 int ocfs2_commit_trans (struct ocfs2_super*,struct inode*) ;
 int ocfs2_dentry_attach_lock (struct dentry*,struct inode*,scalar_t__) ;
 int ocfs2_fill_new_dir (struct ocfs2_super*,struct inode*,struct inode*,struct inode*,struct buffer_head*,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*) ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_free_dir_lookup_result (struct ocfs2_dir_lookup_result*) ;
 struct inode* ocfs2_get_init_inode (struct inode*,int ) ;
 int ocfs2_init_acl (struct inode*,struct inode*,struct inode*,struct buffer_head*,struct buffer_head*,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*) ;
 int ocfs2_init_security_get (struct inode*,struct inode*,TYPE_1__*,struct ocfs2_security_xattr_info*) ;
 int ocfs2_init_security_set (struct inode*,struct inode*,struct buffer_head*,struct ocfs2_security_xattr_info*,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_journal_access_di (struct inode*,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (struct inode*,struct buffer_head*) ;
 scalar_t__ ocfs2_link_max (struct ocfs2_super*) ;
 int ocfs2_mknod_credits (int ,scalar_t__,int) ;
 int ocfs2_mknod_locked (struct ocfs2_super*,struct inode*,struct inode*,scalar_t__,struct buffer_head**,struct buffer_head*,struct inode*,struct ocfs2_alloc_context*) ;
 int ocfs2_prepare_dir_for_insert (struct ocfs2_super*,struct inode*,struct buffer_head*,int ,int ,struct ocfs2_dir_lookup_result*) ;
 int ocfs2_read_links_count (struct ocfs2_dinode*) ;
 int ocfs2_reserve_clusters (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ;
 int ocfs2_reserve_new_inode (struct ocfs2_super*,struct ocfs2_alloc_context**) ;
 int ocfs2_reserve_new_metadata_blocks (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ;
 struct inode* ocfs2_start_trans (struct ocfs2_super*,int ) ;
 scalar_t__ ocfs2_supports_indexed_dirs (struct ocfs2_super*) ;
 int ocfs2_supports_inline_data (struct ocfs2_super*) ;
 int ocfs2_unblock_signals (int *) ;
 int trace_ocfs2_mknod (struct inode*,struct dentry*,int ,int ,unsigned long long,unsigned long,int ) ;

__attribute__((used)) static int ocfs2_mknod(struct inode *dir,
         struct dentry *dentry,
         umode_t mode,
         dev_t dev)
{
 int status = 0;
 struct buffer_head *parent_fe_bh = ((void*)0);
 handle_t *handle = ((void*)0);
 struct ocfs2_super *osb;
 struct ocfs2_dinode *dirfe;
 struct buffer_head *new_fe_bh = ((void*)0);
 struct inode *inode = ((void*)0);
 struct ocfs2_alloc_context *inode_ac = ((void*)0);
 struct ocfs2_alloc_context *data_ac = ((void*)0);
 struct ocfs2_alloc_context *meta_ac = ((void*)0);
 int want_clusters = 0;
 int want_meta = 0;
 int xattr_credits = 0;
 struct ocfs2_security_xattr_info si = {
  .enable = 1,
 };
 int did_quota_inode = 0;
 struct ocfs2_dir_lookup_result lookup = { ((void*)0), };
 sigset_t oldset;
 int did_block_signals = 0;
 struct ocfs2_dentry_lock *dl = ((void*)0);

 trace_ocfs2_mknod(dir, dentry, dentry->d_name.len, dentry->d_name.name,
     (unsigned long long)OCFS2_I(dir)->ip_blkno,
     (unsigned long)dev, mode);

 status = dquot_initialize(dir);
 if (status) {
  mlog_errno(status);
  return status;
 }


 osb = OCFS2_SB(dir->i_sb);

 status = ocfs2_inode_lock(dir, &parent_fe_bh, 1);
 if (status < 0) {
  if (status != -ENOENT)
   mlog_errno(status);
  return status;
 }

 if (S_ISDIR(mode) && (dir->i_nlink >= ocfs2_link_max(osb))) {
  status = -EMLINK;
  goto leave;
 }

 dirfe = (struct ocfs2_dinode *) parent_fe_bh->b_data;
 if (!ocfs2_read_links_count(dirfe)) {

  status = -ENOENT;
  goto leave;
 }

 status = ocfs2_check_dir_for_entry(dir, dentry->d_name.name,
        dentry->d_name.len);
 if (status)
  goto leave;


 status = ocfs2_prepare_dir_for_insert(osb, dir, parent_fe_bh,
           dentry->d_name.name,
           dentry->d_name.len, &lookup);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }


 status = ocfs2_reserve_new_inode(osb, &inode_ac);
 if (status < 0) {
  if (status != -ENOSPC)
   mlog_errno(status);
  goto leave;
 }

 inode = ocfs2_get_init_inode(dir, mode);
 if (IS_ERR(inode)) {
  status = PTR_ERR(inode);
  inode = ((void*)0);
  mlog_errno(status);
  goto leave;
 }


 status = ocfs2_init_security_get(inode, dir, &dentry->d_name, &si);
 if (status) {
  if (status == -EOPNOTSUPP)
   si.enable = 0;
  else {
   mlog_errno(status);
   goto leave;
  }
 }


 status = ocfs2_calc_xattr_init(dir, parent_fe_bh, mode,
           &si, &want_clusters,
           &xattr_credits, &want_meta);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }


 if (S_ISDIR(mode) && !ocfs2_supports_inline_data(osb)) {
  want_clusters += 1;


  if (ocfs2_supports_indexed_dirs(osb))
   want_meta++;
 }

 status = ocfs2_reserve_new_metadata_blocks(osb, want_meta, &meta_ac);
 if (status < 0) {
  if (status != -ENOSPC)
   mlog_errno(status);
  goto leave;
 }

 status = ocfs2_reserve_clusters(osb, want_clusters, &data_ac);
 if (status < 0) {
  if (status != -ENOSPC)
   mlog_errno(status);
  goto leave;
 }

 handle = ocfs2_start_trans(osb, ocfs2_mknod_credits(osb->sb,
           S_ISDIR(mode),
           xattr_credits));
 if (IS_ERR(handle)) {
  status = PTR_ERR(handle);
  handle = ((void*)0);
  mlog_errno(status);
  goto leave;
 }


 ocfs2_block_signals(&oldset);
 did_block_signals = 1;

 status = dquot_alloc_inode(inode);
 if (status)
  goto leave;
 did_quota_inode = 1;


 status = ocfs2_mknod_locked(osb, dir, inode, dev,
        &new_fe_bh, parent_fe_bh, handle,
        inode_ac);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }

 if (S_ISDIR(mode)) {
  status = ocfs2_fill_new_dir(osb, handle, dir, inode,
         new_fe_bh, data_ac, meta_ac);
  if (status < 0) {
   mlog_errno(status);
   goto leave;
  }

  status = ocfs2_journal_access_di(handle, INODE_CACHE(dir),
       parent_fe_bh,
       OCFS2_JOURNAL_ACCESS_WRITE);
  if (status < 0) {
   mlog_errno(status);
   goto leave;
  }
  ocfs2_add_links_count(dirfe, 1);
  ocfs2_journal_dirty(handle, parent_fe_bh);
  inc_nlink(dir);
 }

 status = ocfs2_init_acl(handle, inode, dir, new_fe_bh, parent_fe_bh,
    meta_ac, data_ac);

 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }

 if (si.enable) {
  status = ocfs2_init_security_set(handle, inode, new_fe_bh, &si,
       meta_ac, data_ac);
  if (status < 0) {
   mlog_errno(status);
   goto leave;
  }
 }






 status = ocfs2_dentry_attach_lock(dentry, inode,
       OCFS2_I(dir)->ip_blkno);
 if (status) {
  mlog_errno(status);
  goto leave;
 }

 dl = dentry->d_fsdata;

 status = ocfs2_add_entry(handle, dentry, inode,
     OCFS2_I(inode)->ip_blkno, parent_fe_bh,
     &lookup);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }

 insert_inode_hash(inode);
 d_instantiate(dentry, inode);
 status = 0;
leave:
 if (status < 0 && did_quota_inode)
  dquot_free_inode(inode);
 if (handle)
  ocfs2_commit_trans(osb, handle);

 ocfs2_inode_unlock(dir, 1);
 if (did_block_signals)
  ocfs2_unblock_signals(&oldset);

 brelse(new_fe_bh);
 brelse(parent_fe_bh);
 kfree(si.value);

 ocfs2_free_dir_lookup_result(&lookup);

 if (inode_ac)
  ocfs2_free_alloc_context(inode_ac);

 if (data_ac)
  ocfs2_free_alloc_context(data_ac);

 if (meta_ac)
  ocfs2_free_alloc_context(meta_ac);






 if ((status < 0) && inode) {
  if (dl)
   ocfs2_cleanup_add_entry_failure(osb, dentry, inode);

  OCFS2_I(inode)->ip_flags |= OCFS2_INODE_SKIP_ORPHAN_DIR;
  clear_nlink(inode);
  iput(inode);
 }

 if (status)
  mlog_errno(status);

 return status;
}
