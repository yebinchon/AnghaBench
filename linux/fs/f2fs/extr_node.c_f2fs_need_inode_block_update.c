
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat_entry {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int nat_tree_lock; } ;
typedef int nid_t ;


 int HAS_FSYNCED_INODE ;
 int HAS_LAST_FSYNC ;
 int IS_CHECKPOINTED ;
 struct f2fs_nm_info* NM_I (struct f2fs_sb_info*) ;
 struct nat_entry* __lookup_nat_cache (struct f2fs_nm_info*,int ) ;
 int down_read (int *) ;
 scalar_t__ get_nat_flag (struct nat_entry*,int ) ;
 int up_read (int *) ;

bool f2fs_need_inode_block_update(struct f2fs_sb_info *sbi, nid_t ino)
{
 struct f2fs_nm_info *nm_i = NM_I(sbi);
 struct nat_entry *e;
 bool need_update = 1;

 down_read(&nm_i->nat_tree_lock);
 e = __lookup_nat_cache(nm_i, ino);
 if (e && get_nat_flag(e, HAS_LAST_FSYNC) &&
   (get_nat_flag(e, IS_CHECKPOINTED) ||
    get_nat_flag(e, HAS_FSYNCED_INODE)))
  need_update = 0;
 up_read(&nm_i->nat_tree_lock);
 return need_update;
}
