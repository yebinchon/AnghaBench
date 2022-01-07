
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct fsync_inode_entry {int dummy; } ;
struct f2fs_sb_info {TYPE_1__* sb; int cp_mutex; } ;
struct cp_control {int reason; } ;
typedef int loff_t ;
struct TYPE_2__ {unsigned long s_flags; } ;


 int CP_RECOVERY ;
 int ENOMEM ;
 int INIT_LIST_HEAD (struct list_head*) ;
 scalar_t__ MAIN_BLKADDR (struct f2fs_sb_info*) ;
 int META_MAPPING (struct f2fs_sb_info*) ;
 int NODE_MAPPING (struct f2fs_sb_info*) ;
 int PAGE_SHIFT ;
 int SBI_IS_RECOVERED ;
 int SBI_POR_DOING ;
 unsigned long SB_ACTIVE ;
 unsigned long SB_RDONLY ;
 int clear_sbi_flag (struct f2fs_sb_info*,int ) ;
 int destroy_fsync_dnodes (struct list_head*,int) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 int f2fs_enable_quota_files (struct f2fs_sb_info*,unsigned long) ;
 int f2fs_info (struct f2fs_sb_info*,char*) ;
 int f2fs_kmem_cache_create (char*,int) ;
 int f2fs_quota_off_umount (TYPE_1__*) ;
 int f2fs_write_checkpoint (struct f2fs_sb_info*,struct cp_control*) ;
 int find_fsync_dnodes (struct f2fs_sb_info*,struct list_head*,int) ;
 int fsync_entry_slab ;
 int kmem_cache_destroy (int ) ;
 scalar_t__ list_empty (struct list_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int recover_data (struct f2fs_sb_info*,struct list_head*,struct list_head*,struct list_head*) ;
 int set_sbi_flag (struct f2fs_sb_info*,int ) ;
 int truncate_inode_pages_final (int ) ;
 int truncate_inode_pages_range (int ,int,int) ;

int f2fs_recover_fsync_data(struct f2fs_sb_info *sbi, bool check_only)
{
 struct list_head inode_list, tmp_inode_list;
 struct list_head dir_list;
 int err;
 int ret = 0;
 unsigned long s_flags = sbi->sb->s_flags;
 bool need_writecp = 0;




 if (s_flags & SB_RDONLY) {
  f2fs_info(sbi, "recover fsync data on readonly fs");
  sbi->sb->s_flags &= ~SB_RDONLY;
 }
 fsync_entry_slab = f2fs_kmem_cache_create("f2fs_fsync_inode_entry",
   sizeof(struct fsync_inode_entry));
 if (!fsync_entry_slab) {
  err = -ENOMEM;
  goto out;
 }

 INIT_LIST_HEAD(&inode_list);
 INIT_LIST_HEAD(&tmp_inode_list);
 INIT_LIST_HEAD(&dir_list);


 mutex_lock(&sbi->cp_mutex);


 err = find_fsync_dnodes(sbi, &inode_list, check_only);
 if (err || list_empty(&inode_list))
  goto skip;

 if (check_only) {
  ret = 1;
  goto skip;
 }

 need_writecp = 1;


 err = recover_data(sbi, &inode_list, &tmp_inode_list, &dir_list);
 if (!err)
  f2fs_bug_on(sbi, !list_empty(&inode_list));
 else {

  sbi->sb->s_flags = s_flags;
 }
skip:
 destroy_fsync_dnodes(&inode_list, err);
 destroy_fsync_dnodes(&tmp_inode_list, err);


 truncate_inode_pages_range(META_MAPPING(sbi),
   (loff_t)MAIN_BLKADDR(sbi) << PAGE_SHIFT, -1);

 if (err) {
  truncate_inode_pages_final(NODE_MAPPING(sbi));
  truncate_inode_pages_final(META_MAPPING(sbi));
 } else {
  clear_sbi_flag(sbi, SBI_POR_DOING);
 }
 mutex_unlock(&sbi->cp_mutex);


 destroy_fsync_dnodes(&dir_list, err);

 if (need_writecp) {
  set_sbi_flag(sbi, SBI_IS_RECOVERED);

  if (!err) {
   struct cp_control cpc = {
    .reason = CP_RECOVERY,
   };
   err = f2fs_write_checkpoint(sbi, &cpc);
  }
 }

 kmem_cache_destroy(fsync_entry_slab);
out:





 sbi->sb->s_flags = s_flags;

 return ret ? ret: err;
}
