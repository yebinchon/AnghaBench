
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize_bits; } ;
struct kmem_cache {int dummy; } ;
struct ext4_sb_info {int s_locality_groups; int s_mb_discarded; int s_mb_preallocated; int s_mb_generation_time; int s_mb_buddies_generated; int s_mb_lost_chunks; int s_bal_breaks; int s_bal_2orders; int s_bal_goals; int s_bal_ex_scanned; int s_bal_success; int s_bal_reqs; int s_bal_allocated; scalar_t__ s_mb_stats; int s_buddy_cache; int s_mb_maxs; int s_mb_offsets; int * s_group_info; } ;
struct ext4_group_info {int bb_bitmap; } ;
typedef int ext4_group_t ;


 int EXT4_DESC_PER_BLOCK (struct super_block*) ;
 int EXT4_DESC_PER_BLOCK_BITS (struct super_block*) ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int KERN_INFO ;
 int atomic_read (int *) ;
 int cond_resched () ;
 struct ext4_group_info* ext4_get_group_info (struct super_block*,int) ;
 int ext4_get_groups_count (struct super_block*) ;
 int ext4_lock_group (struct super_block*,int) ;
 int ext4_mb_cleanup_pa (struct ext4_group_info*) ;
 int ext4_msg (struct super_block*,int ,char*,int ,int ,...) ;
 int ext4_unlock_group (struct super_block*,int) ;
 int free_percpu (int ) ;
 struct kmem_cache* get_groupinfo_cache (int ) ;
 int iput (int ) ;
 int kfree (int ) ;
 int kmem_cache_free (struct kmem_cache*,struct ext4_group_info*) ;
 int kvfree (int *) ;

int ext4_mb_release(struct super_block *sb)
{
 ext4_group_t ngroups = ext4_get_groups_count(sb);
 ext4_group_t i;
 int num_meta_group_infos;
 struct ext4_group_info *grinfo;
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 struct kmem_cache *cachep = get_groupinfo_cache(sb->s_blocksize_bits);

 if (sbi->s_group_info) {
  for (i = 0; i < ngroups; i++) {
   cond_resched();
   grinfo = ext4_get_group_info(sb, i);



   ext4_lock_group(sb, i);
   ext4_mb_cleanup_pa(grinfo);
   ext4_unlock_group(sb, i);
   kmem_cache_free(cachep, grinfo);
  }
  num_meta_group_infos = (ngroups +
    EXT4_DESC_PER_BLOCK(sb) - 1) >>
   EXT4_DESC_PER_BLOCK_BITS(sb);
  for (i = 0; i < num_meta_group_infos; i++)
   kfree(sbi->s_group_info[i]);
  kvfree(sbi->s_group_info);
 }
 kfree(sbi->s_mb_offsets);
 kfree(sbi->s_mb_maxs);
 iput(sbi->s_buddy_cache);
 if (sbi->s_mb_stats) {
  ext4_msg(sb, KERN_INFO,
         "mballoc: %u blocks %u reqs (%u success)",
    atomic_read(&sbi->s_bal_allocated),
    atomic_read(&sbi->s_bal_reqs),
    atomic_read(&sbi->s_bal_success));
  ext4_msg(sb, KERN_INFO,
        "mballoc: %u extents scanned, %u goal hits, "
    "%u 2^N hits, %u breaks, %u lost",
    atomic_read(&sbi->s_bal_ex_scanned),
    atomic_read(&sbi->s_bal_goals),
    atomic_read(&sbi->s_bal_2orders),
    atomic_read(&sbi->s_bal_breaks),
    atomic_read(&sbi->s_mb_lost_chunks));
  ext4_msg(sb, KERN_INFO,
         "mballoc: %lu generated and it took %Lu",
    sbi->s_mb_buddies_generated,
    sbi->s_mb_generation_time);
  ext4_msg(sb, KERN_INFO,
         "mballoc: %u preallocated, %u discarded",
    atomic_read(&sbi->s_mb_preallocated),
    atomic_read(&sbi->s_mb_discarded));
 }

 free_percpu(sbi->s_locality_groups);

 return 0;
}
