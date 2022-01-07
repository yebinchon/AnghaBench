
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ocfs2_super {int sb; int uuid_str; } ;
struct ocfs2_dir_lookup_result {int * member_0; } ;
struct ocfs2_dinode {int i_ctime_nsec; int i_ctime; } ;
struct TYPE_5__ {int tv_nsec; int tv_sec; } ;
struct inode {TYPE_2__ i_ctime; int i_nlink; int i_mode; int i_sb; } ;
struct TYPE_4__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; struct dentry* d_parent; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int sigset_t ;
typedef int handle_t ;
struct TYPE_6__ {scalar_t__ ip_blkno; } ;


 int EIO ;
 int EMLINK ;
 int ENOENT ;
 int EPERM ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int ML_ERROR ;
 TYPE_3__* OCFS2_I (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 scalar_t__ S_ISDIR (int ) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 TYPE_2__ current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int drop_nlink (struct inode*) ;
 int get_bh (struct buffer_head*) ;
 int ihold (struct inode*) ;
 int inc_nlink (struct inode*) ;
 int mlog (int ,char*,int ) ;
 int mlog_errno (int) ;
 int ocfs2_add_entry (int *,struct dentry*,struct inode*,scalar_t__,struct buffer_head*,struct ocfs2_dir_lookup_result*) ;
 int ocfs2_add_links_count (struct ocfs2_dinode*,int) ;
 int ocfs2_block_signals (int *) ;
 int ocfs2_check_dir_for_entry (struct inode*,int ,int ) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_dentry_attach_lock (struct dentry*,struct inode*,scalar_t__) ;
 int ocfs2_double_lock (struct ocfs2_super*,struct buffer_head**,struct inode*,struct buffer_head**,struct inode*,int ) ;
 int ocfs2_double_unlock (struct inode*,struct inode*) ;
 int ocfs2_free_dir_lookup_result (struct ocfs2_dir_lookup_result*) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_link_credits (int ) ;
 scalar_t__ ocfs2_link_max (struct ocfs2_super*) ;
 int ocfs2_lookup_ino_from_name (struct inode*,int ,int ,scalar_t__*) ;
 int ocfs2_prepare_dir_for_insert (struct ocfs2_super*,struct inode*,struct buffer_head*,int ,int ,struct ocfs2_dir_lookup_result*) ;
 scalar_t__ ocfs2_read_links_count (struct ocfs2_dinode*) ;
 int ocfs2_set_links_count (struct ocfs2_dinode*,int ) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_unblock_signals (int *) ;
 int trace_ocfs2_link (unsigned long long,int ,int ,int ,int ) ;

__attribute__((used)) static int ocfs2_link(struct dentry *old_dentry,
        struct inode *dir,
        struct dentry *dentry)
{
 handle_t *handle;
 struct inode *inode = d_inode(old_dentry);
 struct inode *old_dir = d_inode(old_dentry->d_parent);
 int err;
 struct buffer_head *fe_bh = ((void*)0);
 struct buffer_head *old_dir_bh = ((void*)0);
 struct buffer_head *parent_fe_bh = ((void*)0);
 struct ocfs2_dinode *fe = ((void*)0);
 struct ocfs2_super *osb = OCFS2_SB(dir->i_sb);
 struct ocfs2_dir_lookup_result lookup = { ((void*)0), };
 sigset_t oldset;
 u64 old_de_ino;

 trace_ocfs2_link((unsigned long long)OCFS2_I(inode)->ip_blkno,
    old_dentry->d_name.len, old_dentry->d_name.name,
    dentry->d_name.len, dentry->d_name.name);

 if (S_ISDIR(inode->i_mode))
  return -EPERM;

 err = dquot_initialize(dir);
 if (err) {
  mlog_errno(err);
  return err;
 }

 err = ocfs2_double_lock(osb, &old_dir_bh, old_dir,
   &parent_fe_bh, dir, 0);
 if (err < 0) {
  if (err != -ENOENT)
   mlog_errno(err);
  return err;
 }



 if (!parent_fe_bh) {
  if (old_dir_bh) {
   parent_fe_bh = old_dir_bh;
   get_bh(parent_fe_bh);
  } else {
   mlog(ML_ERROR, "%s: no old_dir_bh!\n", osb->uuid_str);
   err = -EIO;
   goto out;
  }
 }

 if (!dir->i_nlink) {
  err = -ENOENT;
  goto out;
 }

 err = ocfs2_lookup_ino_from_name(old_dir, old_dentry->d_name.name,
   old_dentry->d_name.len, &old_de_ino);
 if (err) {
  err = -ENOENT;
  goto out;
 }





 if (old_de_ino != OCFS2_I(inode)->ip_blkno) {
  err = -ENOENT;
  goto out;
 }

 err = ocfs2_check_dir_for_entry(dir, dentry->d_name.name,
     dentry->d_name.len);
 if (err)
  goto out;

 err = ocfs2_prepare_dir_for_insert(osb, dir, parent_fe_bh,
        dentry->d_name.name,
        dentry->d_name.len, &lookup);
 if (err < 0) {
  mlog_errno(err);
  goto out;
 }

 err = ocfs2_inode_lock(inode, &fe_bh, 1);
 if (err < 0) {
  if (err != -ENOENT)
   mlog_errno(err);
  goto out;
 }

 fe = (struct ocfs2_dinode *) fe_bh->b_data;
 if (ocfs2_read_links_count(fe) >= ocfs2_link_max(osb)) {
  err = -EMLINK;
  goto out_unlock_inode;
 }

 handle = ocfs2_start_trans(osb, ocfs2_link_credits(osb->sb));
 if (IS_ERR(handle)) {
  err = PTR_ERR(handle);
  handle = ((void*)0);
  mlog_errno(err);
  goto out_unlock_inode;
 }


 ocfs2_block_signals(&oldset);

 err = ocfs2_journal_access_di(handle, INODE_CACHE(inode), fe_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (err < 0) {
  mlog_errno(err);
  goto out_commit;
 }

 inc_nlink(inode);
 inode->i_ctime = current_time(inode);
 ocfs2_set_links_count(fe, inode->i_nlink);
 fe->i_ctime = cpu_to_le64(inode->i_ctime.tv_sec);
 fe->i_ctime_nsec = cpu_to_le32(inode->i_ctime.tv_nsec);
 ocfs2_journal_dirty(handle, fe_bh);

 err = ocfs2_add_entry(handle, dentry, inode,
         OCFS2_I(inode)->ip_blkno,
         parent_fe_bh, &lookup);
 if (err) {
  ocfs2_add_links_count(fe, -1);
  drop_nlink(inode);
  mlog_errno(err);
  goto out_commit;
 }

 err = ocfs2_dentry_attach_lock(dentry, inode, OCFS2_I(dir)->ip_blkno);
 if (err) {
  mlog_errno(err);
  goto out_commit;
 }

 ihold(inode);
 d_instantiate(dentry, inode);

out_commit:
 ocfs2_commit_trans(osb, handle);
 ocfs2_unblock_signals(&oldset);
out_unlock_inode:
 ocfs2_inode_unlock(inode, 1);

out:
 ocfs2_double_unlock(old_dir, dir);

 brelse(fe_bh);
 brelse(parent_fe_bh);
 brelse(old_dir_bh);

 ocfs2_free_dir_lookup_result(&lookup);

 if (err)
  mlog_errno(err);

 return err;
}
