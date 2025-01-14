
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
struct inode {int i_flags; int i_mode; int i_generation; int i_mtime; int i_ctime; int i_atime; scalar_t__ i_blocks; int i_ino; int i_sb; } ;
struct f2fs_sb_info {int dummy; } ;
typedef int nid_t ;
struct TYPE_4__ {int i_current_depth; int i_flags; int i_inline_xattr_size; int i_extra_isize; int i_projid; int i_crtime; } ;
struct TYPE_3__ {int inline_xattr_size; } ;


 int DEFAULT_INLINE_XATTR_ADDRS ;
 scalar_t__ DUMMY_ENCRYPTION_ENABLED (struct f2fs_sb_info*) ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 struct inode* ERR_PTR (int) ;
 int F2FS_DEF_PROJID ;
 int F2FS_FL_INHERITED ;
 TYPE_2__* F2FS_I (struct inode*) ;
 int F2FS_INDEX_FL ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 TYPE_1__ F2FS_OPTION (struct f2fs_sb_info*) ;
 int F2FS_PROJINHERIT_FL ;
 int F2FS_TOTAL_EXTRA_ATTR_SIZE ;
 int FI_EXTRA_ATTR ;
 int FI_FREE_NID ;
 int FI_INLINE_DATA ;
 int FI_INLINE_DENTRY ;
 int FI_INLINE_XATTR ;
 int FI_NEW_INODE ;
 int FI_PROJ_INHERIT ;
 int INLINE_DATA ;
 int INLINE_XATTR ;
 scalar_t__ IS_ENCRYPTED (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 int S_NOQUOTA ;
 int clear_nlink (struct inode*) ;
 int current_time (struct inode*) ;
 int dquot_drop (struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int f2fs_alloc_nid (struct f2fs_sb_info*,int *) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 int f2fs_has_extra_attr (struct inode*) ;
 scalar_t__ f2fs_has_inline_dentry (struct inode*) ;
 scalar_t__ f2fs_has_inline_xattr (struct inode*) ;
 int f2fs_init_extent_tree (struct inode*,int *) ;
 int f2fs_lock_op (struct f2fs_sb_info*) ;
 int f2fs_mask_flags (int ,int) ;
 scalar_t__ f2fs_may_encrypt (struct inode*) ;
 scalar_t__ f2fs_may_inline_data (struct inode*) ;
 scalar_t__ f2fs_may_inline_dentry (struct inode*) ;
 scalar_t__ f2fs_sb_has_extra_attr (struct f2fs_sb_info*) ;
 scalar_t__ f2fs_sb_has_flexible_inline_xattr (struct f2fs_sb_info*) ;
 scalar_t__ f2fs_sb_has_project_quota (struct f2fs_sb_info*) ;
 int f2fs_set_encrypted_inode (struct inode*) ;
 int f2fs_set_inode_flags (struct inode*) ;
 int f2fs_unlock_op (struct f2fs_sb_info*) ;
 int init_user_ns ;
 int inode_init_owner (struct inode*,struct inode*,int ) ;
 int insert_inode_locked (struct inode*) ;
 int iput (struct inode*) ;
 int make_bad_inode (struct inode*) ;
 int make_kprojid (int *,int ) ;
 struct inode* new_inode (int ) ;
 int prandom_u32 () ;
 int set_inode_flag (struct inode*,int ) ;
 int stat_inc_inline_dir (struct inode*) ;
 int stat_inc_inline_inode (struct inode*) ;
 int stat_inc_inline_xattr (struct inode*) ;
 scalar_t__ test_opt (struct f2fs_sb_info*,int ) ;
 int trace_f2fs_new_inode (struct inode*,int) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static struct inode *f2fs_new_inode(struct inode *dir, umode_t mode)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(dir);
 nid_t ino;
 struct inode *inode;
 bool nid_free = 0;
 int xattr_size = 0;
 int err;

 inode = new_inode(dir->i_sb);
 if (!inode)
  return ERR_PTR(-ENOMEM);

 f2fs_lock_op(sbi);
 if (!f2fs_alloc_nid(sbi, &ino)) {
  f2fs_unlock_op(sbi);
  err = -ENOSPC;
  goto fail;
 }
 f2fs_unlock_op(sbi);

 nid_free = 1;

 inode_init_owner(inode, dir, mode);

 inode->i_ino = ino;
 inode->i_blocks = 0;
 inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
 F2FS_I(inode)->i_crtime = inode->i_mtime;
 inode->i_generation = prandom_u32();

 if (S_ISDIR(inode->i_mode))
  F2FS_I(inode)->i_current_depth = 1;

 err = insert_inode_locked(inode);
 if (err) {
  err = -EINVAL;
  goto fail;
 }

 if (f2fs_sb_has_project_quota(sbi) &&
  (F2FS_I(dir)->i_flags & F2FS_PROJINHERIT_FL))
  F2FS_I(inode)->i_projid = F2FS_I(dir)->i_projid;
 else
  F2FS_I(inode)->i_projid = make_kprojid(&init_user_ns,
       F2FS_DEF_PROJID);

 err = dquot_initialize(inode);
 if (err)
  goto fail_drop;

 set_inode_flag(inode, FI_NEW_INODE);


 if ((IS_ENCRYPTED(dir) || DUMMY_ENCRYPTION_ENABLED(sbi)) &&
    f2fs_may_encrypt(inode))
  f2fs_set_encrypted_inode(inode);

 if (f2fs_sb_has_extra_attr(sbi)) {
  set_inode_flag(inode, FI_EXTRA_ATTR);
  F2FS_I(inode)->i_extra_isize = F2FS_TOTAL_EXTRA_ATTR_SIZE;
 }

 if (test_opt(sbi, INLINE_XATTR))
  set_inode_flag(inode, FI_INLINE_XATTR);

 if (test_opt(sbi, INLINE_DATA) && f2fs_may_inline_data(inode))
  set_inode_flag(inode, FI_INLINE_DATA);
 if (f2fs_may_inline_dentry(inode))
  set_inode_flag(inode, FI_INLINE_DENTRY);

 if (f2fs_sb_has_flexible_inline_xattr(sbi)) {
  f2fs_bug_on(sbi, !f2fs_has_extra_attr(inode));
  if (f2fs_has_inline_xattr(inode))
   xattr_size = F2FS_OPTION(sbi).inline_xattr_size;

 } else if (f2fs_has_inline_xattr(inode) ||
    f2fs_has_inline_dentry(inode)) {
  xattr_size = DEFAULT_INLINE_XATTR_ADDRS;
 }
 F2FS_I(inode)->i_inline_xattr_size = xattr_size;

 f2fs_init_extent_tree(inode, ((void*)0));

 stat_inc_inline_xattr(inode);
 stat_inc_inline_inode(inode);
 stat_inc_inline_dir(inode);

 F2FS_I(inode)->i_flags =
  f2fs_mask_flags(mode, F2FS_I(dir)->i_flags & F2FS_FL_INHERITED);

 if (S_ISDIR(inode->i_mode))
  F2FS_I(inode)->i_flags |= F2FS_INDEX_FL;

 if (F2FS_I(inode)->i_flags & F2FS_PROJINHERIT_FL)
  set_inode_flag(inode, FI_PROJ_INHERIT);

 f2fs_set_inode_flags(inode);

 trace_f2fs_new_inode(inode, 0);
 return inode;

fail:
 trace_f2fs_new_inode(inode, err);
 make_bad_inode(inode);
 if (nid_free)
  set_inode_flag(inode, FI_FREE_NID);
 iput(inode);
 return ERR_PTR(err);
fail_drop:
 trace_f2fs_new_inode(inode, err);
 dquot_drop(inode);
 inode->i_flags |= S_NOQUOTA;
 if (nid_free)
  set_inode_flag(inode, FI_FREE_NID);
 clear_nlink(inode);
 unlock_new_inode(inode);
 iput(inode);
 return ERR_PTR(err);
}
