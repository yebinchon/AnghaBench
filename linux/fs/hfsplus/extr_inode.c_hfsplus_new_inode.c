
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct super_block {int dummy; } ;
struct inode {int i_size; TYPE_1__* i_mapping; int * i_op; int i_mode; int * i_fop; int i_ctime; int i_atime; int i_mtime; scalar_t__ i_ino; } ;
struct hfsplus_sb_info {int data_clump_blocks; int file_count; int folder_count; int next_cnid; } ;
struct hfsplus_inode_info {int clump_blocks; int * rsrc_inode; scalar_t__ fs_blocks; scalar_t__ phys_size; scalar_t__ cached_blocks; scalar_t__ cached_start; scalar_t__ first_blocks; scalar_t__ alloc_blocks; int cached_extents; int first_extents; scalar_t__ subfolders; scalar_t__ userflags; scalar_t__ flags; scalar_t__ extent_state; int opencnt; int extents_lock; int open_dir_lock; int open_dir_list; } ;
typedef int hfsplus_extent_rec ;
struct TYPE_2__ {int * a_ops; } ;


 struct hfsplus_inode_info* HFSPLUS_I (struct inode*) ;
 struct hfsplus_sb_info* HFSPLUS_SB (struct super_block*) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int atomic_set (int *,int ) ;
 int current_time (struct inode*) ;
 int hfsplus_aops ;
 int hfsplus_dir_inode_operations ;
 int hfsplus_dir_operations ;
 int hfsplus_file_inode_operations ;
 int hfsplus_file_operations ;
 int hfsplus_mark_mdb_dirty (struct super_block*) ;
 int inode_init_owner (struct inode*,struct inode*,int ) ;
 int inode_nohighmem (struct inode*) ;
 int insert_inode_hash (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int memset (int ,int ,int) ;
 int mutex_init (int *) ;
 struct inode* new_inode (struct super_block*) ;
 int page_symlink_inode_operations ;
 int set_nlink (struct inode*,int) ;
 int spin_lock_init (int *) ;

struct inode *hfsplus_new_inode(struct super_block *sb, struct inode *dir,
    umode_t mode)
{
 struct hfsplus_sb_info *sbi = HFSPLUS_SB(sb);
 struct inode *inode = new_inode(sb);
 struct hfsplus_inode_info *hip;

 if (!inode)
  return ((void*)0);

 inode->i_ino = sbi->next_cnid++;
 inode_init_owner(inode, dir, mode);
 set_nlink(inode, 1);
 inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);

 hip = HFSPLUS_I(inode);
 INIT_LIST_HEAD(&hip->open_dir_list);
 spin_lock_init(&hip->open_dir_lock);
 mutex_init(&hip->extents_lock);
 atomic_set(&hip->opencnt, 0);
 hip->extent_state = 0;
 hip->flags = 0;
 hip->userflags = 0;
 hip->subfolders = 0;
 memset(hip->first_extents, 0, sizeof(hfsplus_extent_rec));
 memset(hip->cached_extents, 0, sizeof(hfsplus_extent_rec));
 hip->alloc_blocks = 0;
 hip->first_blocks = 0;
 hip->cached_start = 0;
 hip->cached_blocks = 0;
 hip->phys_size = 0;
 hip->fs_blocks = 0;
 hip->rsrc_inode = ((void*)0);
 if (S_ISDIR(inode->i_mode)) {
  inode->i_size = 2;
  sbi->folder_count++;
  inode->i_op = &hfsplus_dir_inode_operations;
  inode->i_fop = &hfsplus_dir_operations;
 } else if (S_ISREG(inode->i_mode)) {
  sbi->file_count++;
  inode->i_op = &hfsplus_file_inode_operations;
  inode->i_fop = &hfsplus_file_operations;
  inode->i_mapping->a_ops = &hfsplus_aops;
  hip->clump_blocks = sbi->data_clump_blocks;
 } else if (S_ISLNK(inode->i_mode)) {
  sbi->file_count++;
  inode->i_op = &page_symlink_inode_operations;
  inode_nohighmem(inode);
  inode->i_mapping->a_ops = &hfsplus_aops;
  hip->clump_blocks = 1;
 } else
  sbi->file_count++;
 insert_inode_hash(inode);
 mark_inode_dirty(inode);
 hfsplus_mark_mdb_dirty(sb);

 return inode;
}
