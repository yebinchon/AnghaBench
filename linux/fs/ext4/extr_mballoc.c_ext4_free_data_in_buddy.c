
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_3__ {int rb_node; } ;
struct ext4_group_info {TYPE_1__ bb_free_root; } ;
struct ext4_free_data {int efd_count; int efd_group; int efd_start_cluster; int efd_node; } ;
struct ext4_buddy {int bd_bitmap_page; int bd_buddy_page; struct ext4_group_info* bd_info; } ;
struct TYPE_4__ {int s_mb_free_pending; int s_md_lock; } ;


 int BUG_ON (int) ;
 int DISCARD ;
 int EXT4_MB_GRP_CLEAR_TRIMMED (struct ext4_group_info*) ;
 TYPE_2__* EXT4_SB (struct super_block*) ;
 int ext4_free_data_cachep ;
 int ext4_lock_group (struct super_block*,int ) ;
 int ext4_mb_load_buddy (struct super_block*,int ,struct ext4_buddy*) ;
 int ext4_mb_unload_buddy (struct ext4_buddy*) ;
 int ext4_unlock_group (struct super_block*,int ) ;
 int kmem_cache_free (int ,struct ext4_free_data*) ;
 int mb_debug (int,char*,int,int,...) ;
 int mb_free_blocks (int *,struct ext4_buddy*,int ,int) ;
 int put_page (int ) ;
 int rb_erase (int *,TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_opt (struct super_block*,int ) ;

__attribute__((used)) static void ext4_free_data_in_buddy(struct super_block *sb,
        struct ext4_free_data *entry)
{
 struct ext4_buddy e4b;
 struct ext4_group_info *db;
 int err, count = 0, count2 = 0;

 mb_debug(1, "gonna free %u blocks in group %u (0x%p):",
   entry->efd_count, entry->efd_group, entry);

 err = ext4_mb_load_buddy(sb, entry->efd_group, &e4b);

 BUG_ON(err != 0);

 spin_lock(&EXT4_SB(sb)->s_md_lock);
 EXT4_SB(sb)->s_mb_free_pending -= entry->efd_count;
 spin_unlock(&EXT4_SB(sb)->s_md_lock);

 db = e4b.bd_info;

 count += entry->efd_count;
 count2++;
 ext4_lock_group(sb, entry->efd_group);

 rb_erase(&entry->efd_node, &(db->bb_free_root));
 mb_free_blocks(((void*)0), &e4b, entry->efd_start_cluster, entry->efd_count);







 if (!test_opt(sb, DISCARD))
  EXT4_MB_GRP_CLEAR_TRIMMED(db);

 if (!db->bb_free_root.rb_node) {



  put_page(e4b.bd_buddy_page);
  put_page(e4b.bd_bitmap_page);
 }
 ext4_unlock_group(sb, entry->efd_group);
 kmem_cache_free(ext4_free_data_cachep, entry);
 ext4_mb_unload_buddy(&e4b);

 mb_debug(1, "freed %u blocks in %u structures\n", count, count2);
}
