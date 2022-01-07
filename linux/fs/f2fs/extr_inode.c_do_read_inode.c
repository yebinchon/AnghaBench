
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {void* tv_nsec; void* tv_sec; } ;
struct inode {TYPE_1__ i_mtime; TYPE_1__ i_ctime; TYPE_1__ i_atime; void* i_size; int i_ino; void* i_mode; void* i_generation; int i_blocks; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_inode_info {int i_flags; TYPE_1__ i_crtime; TYPE_1__* i_disk_time; void* i_extra_isize; int i_projid; void* last_disk_size; void* i_inline_xattr_size; int i_dir_level; void* i_pino; int i_advise; scalar_t__ flags; void* i_xattr_nid; void** i_gc_failures; void* i_current_depth; } ;
struct f2fs_inode {int i_crtime_nsec; int i_crtime; int i_projid; int i_inline_xattr_size; int i_extra_isize; int i_ext; int i_dir_level; int i_pino; int i_advise; int i_flags; int i_xattr_nid; int i_gc_failures; int i_current_depth; int i_generation; int i_mtime_nsec; int i_ctime_nsec; int i_atime_nsec; int i_mtime; int i_ctime; int i_atime; int i_blocks; int i_size; int i_links; int i_gid; int i_uid; int i_mode; } ;
typedef scalar_t__ projid_t ;


 void* DEFAULT_INLINE_XATTR_ADDRS ;
 int EFSCORRUPTED ;
 int EINVAL ;
 scalar_t__ F2FS_DEF_PROJID ;
 scalar_t__ F2FS_FITS_IN_INODE (struct f2fs_inode*,void*,scalar_t__) ;
 struct f2fs_inode_info* F2FS_I (struct inode*) ;
 struct f2fs_inode* F2FS_INODE (struct page*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int F2FS_PROJINHERIT_FL ;
 int FI_FIRST_BLOCK_WRITTEN ;
 int FI_PROJ_INHERIT ;
 size_t GC_FAILURE_PIN ;
 scalar_t__ IS_ERR (struct page*) ;
 int PTR_ERR (struct page*) ;
 int SECTOR_FROM_BLOCK (void*) ;
 scalar_t__ S_ISDIR (void*) ;
 scalar_t__ S_ISREG (void*) ;
 int __get_inode_rdev (struct inode*,struct f2fs_inode*) ;
 int __recover_inline_status (struct inode*,struct page*) ;
 int __written_first_block (struct f2fs_sb_info*,struct f2fs_inode*) ;
 scalar_t__ f2fs_check_nid_range (struct f2fs_sb_info*,int ) ;
 int f2fs_exist_data (struct inode*) ;
 struct page* f2fs_get_node_page (struct f2fs_sb_info*,int ) ;
 scalar_t__ f2fs_has_extra_attr (struct inode*) ;
 scalar_t__ f2fs_has_inline_data (struct inode*) ;
 scalar_t__ f2fs_has_inline_dentry (struct inode*) ;
 scalar_t__ f2fs_has_inline_xattr (struct inode*) ;
 scalar_t__ f2fs_init_extent_tree (struct inode*,int *) ;
 int f2fs_need_inode_block_update (struct f2fs_sb_info*,int ) ;
 int f2fs_put_page (struct page*,int) ;
 scalar_t__ f2fs_sb_has_flexible_inline_xattr (struct f2fs_sb_info*) ;
 scalar_t__ f2fs_sb_has_inode_crtime (struct f2fs_sb_info*) ;
 scalar_t__ f2fs_sb_has_project_quota (struct f2fs_sb_info*) ;
 int get_inline_info (struct inode*,struct f2fs_inode*) ;
 scalar_t__ i_crtime ;
 int i_gid_write (struct inode*,void*) ;
 int i_uid_write (struct inode*,void*) ;
 int init_user_ns ;
 int is_cold_node (struct page*) ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 int make_kprojid (int *,scalar_t__) ;
 int sanity_check_inode (struct inode*,struct page*) ;
 int set_cold_node (struct page*,int) ;
 int set_inode_flag (struct inode*,int ) ;
 int set_nlink (struct inode*,void*) ;
 int set_page_dirty (struct page*) ;
 int stat_inc_inline_dir (struct inode*) ;
 int stat_inc_inline_inode (struct inode*) ;
 int stat_inc_inline_xattr (struct inode*) ;

__attribute__((used)) static int do_read_inode(struct inode *inode)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct f2fs_inode_info *fi = F2FS_I(inode);
 struct page *node_page;
 struct f2fs_inode *ri;
 projid_t i_projid;
 int err;


 if (f2fs_check_nid_range(sbi, inode->i_ino))
  return -EINVAL;

 node_page = f2fs_get_node_page(sbi, inode->i_ino);
 if (IS_ERR(node_page))
  return PTR_ERR(node_page);

 ri = F2FS_INODE(node_page);

 inode->i_mode = le16_to_cpu(ri->i_mode);
 i_uid_write(inode, le32_to_cpu(ri->i_uid));
 i_gid_write(inode, le32_to_cpu(ri->i_gid));
 set_nlink(inode, le32_to_cpu(ri->i_links));
 inode->i_size = le64_to_cpu(ri->i_size);
 inode->i_blocks = SECTOR_FROM_BLOCK(le64_to_cpu(ri->i_blocks) - 1);

 inode->i_atime.tv_sec = le64_to_cpu(ri->i_atime);
 inode->i_ctime.tv_sec = le64_to_cpu(ri->i_ctime);
 inode->i_mtime.tv_sec = le64_to_cpu(ri->i_mtime);
 inode->i_atime.tv_nsec = le32_to_cpu(ri->i_atime_nsec);
 inode->i_ctime.tv_nsec = le32_to_cpu(ri->i_ctime_nsec);
 inode->i_mtime.tv_nsec = le32_to_cpu(ri->i_mtime_nsec);
 inode->i_generation = le32_to_cpu(ri->i_generation);
 if (S_ISDIR(inode->i_mode))
  fi->i_current_depth = le32_to_cpu(ri->i_current_depth);
 else if (S_ISREG(inode->i_mode))
  fi->i_gc_failures[GC_FAILURE_PIN] =
     le16_to_cpu(ri->i_gc_failures);
 fi->i_xattr_nid = le32_to_cpu(ri->i_xattr_nid);
 fi->i_flags = le32_to_cpu(ri->i_flags);
 if (S_ISREG(inode->i_mode))
  fi->i_flags &= ~F2FS_PROJINHERIT_FL;
 fi->flags = 0;
 fi->i_advise = ri->i_advise;
 fi->i_pino = le32_to_cpu(ri->i_pino);
 fi->i_dir_level = ri->i_dir_level;

 if (f2fs_init_extent_tree(inode, &ri->i_ext))
  set_page_dirty(node_page);

 get_inline_info(inode, ri);

 fi->i_extra_isize = f2fs_has_extra_attr(inode) ?
     le16_to_cpu(ri->i_extra_isize) : 0;

 if (f2fs_sb_has_flexible_inline_xattr(sbi)) {
  fi->i_inline_xattr_size = le16_to_cpu(ri->i_inline_xattr_size);
 } else if (f2fs_has_inline_xattr(inode) ||
    f2fs_has_inline_dentry(inode)) {
  fi->i_inline_xattr_size = DEFAULT_INLINE_XATTR_ADDRS;
 } else {







  fi->i_inline_xattr_size = 0;
 }

 if (!sanity_check_inode(inode, node_page)) {
  f2fs_put_page(node_page, 1);
  return -EFSCORRUPTED;
 }


 if (f2fs_has_inline_data(inode) && !f2fs_exist_data(inode))
  __recover_inline_status(inode, node_page);


 if (!S_ISDIR(inode->i_mode) && !is_cold_node(node_page)) {
  set_cold_node(node_page, 0);
  set_page_dirty(node_page);
 }


 __get_inode_rdev(inode, ri);

 if (S_ISREG(inode->i_mode)) {
  err = __written_first_block(sbi, ri);
  if (err < 0) {
   f2fs_put_page(node_page, 1);
   return err;
  }
  if (!err)
   set_inode_flag(inode, FI_FIRST_BLOCK_WRITTEN);
 }

 if (!f2fs_need_inode_block_update(sbi, inode->i_ino))
  fi->last_disk_size = inode->i_size;

 if (fi->i_flags & F2FS_PROJINHERIT_FL)
  set_inode_flag(inode, FI_PROJ_INHERIT);

 if (f2fs_has_extra_attr(inode) && f2fs_sb_has_project_quota(sbi) &&
   F2FS_FITS_IN_INODE(ri, fi->i_extra_isize, i_projid))
  i_projid = (projid_t)le32_to_cpu(ri->i_projid);
 else
  i_projid = F2FS_DEF_PROJID;
 fi->i_projid = make_kprojid(&init_user_ns, i_projid);

 if (f2fs_has_extra_attr(inode) && f2fs_sb_has_inode_crtime(sbi) &&
   F2FS_FITS_IN_INODE(ri, fi->i_extra_isize, i_crtime)) {
  fi->i_crtime.tv_sec = le64_to_cpu(ri->i_crtime);
  fi->i_crtime.tv_nsec = le32_to_cpu(ri->i_crtime_nsec);
 }

 F2FS_I(inode)->i_disk_time[0] = inode->i_atime;
 F2FS_I(inode)->i_disk_time[1] = inode->i_ctime;
 F2FS_I(inode)->i_disk_time[2] = inode->i_mtime;
 F2FS_I(inode)->i_disk_time[3] = F2FS_I(inode)->i_crtime;
 f2fs_put_page(node_page, 1);

 stat_inc_inline_xattr(inode);
 stat_inc_inline_inode(inode);
 stat_inc_inline_dir(inode);

 return 0;
}
