
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int s_blocksize_bits; } ;
struct kmem_cache {int dummy; } ;
struct ext4_sb_info {size_t s_group_info_size; int * s_group_info; TYPE_1__* s_buddy_cache; } ;
struct ext4_group_desc {int dummy; } ;
typedef size_t ext4_group_t ;
struct TYPE_6__ {scalar_t__ i_disksize; } ;
struct TYPE_5__ {int i_ino; } ;


 int ENOMEM ;
 int EXT4_BAD_INO ;
 TYPE_3__* EXT4_I (TYPE_1__*) ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int KERN_ERR ;
 int cond_resched () ;
 struct ext4_group_desc* ext4_get_group_desc (struct super_block*,size_t,int *) ;
 int ext4_get_group_info (struct super_block*,size_t) ;
 size_t ext4_get_groups_count (struct super_block*) ;
 scalar_t__ ext4_mb_add_groupinfo (struct super_block*,size_t,struct ext4_group_desc*) ;
 int ext4_mb_alloc_groupinfo (struct super_block*,size_t) ;
 int ext4_msg (struct super_block*,int ,char*,...) ;
 struct kmem_cache* get_groupinfo_cache (int ) ;
 int iput (TYPE_1__*) ;
 int kfree (int ) ;
 int kmem_cache_free (struct kmem_cache*,int ) ;
 int kvfree (int *) ;
 TYPE_1__* new_inode (struct super_block*) ;

__attribute__((used)) static int ext4_mb_init_backend(struct super_block *sb)
{
 ext4_group_t ngroups = ext4_get_groups_count(sb);
 ext4_group_t i;
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 int err;
 struct ext4_group_desc *desc;
 struct kmem_cache *cachep;

 err = ext4_mb_alloc_groupinfo(sb, ngroups);
 if (err)
  return err;

 sbi->s_buddy_cache = new_inode(sb);
 if (sbi->s_buddy_cache == ((void*)0)) {
  ext4_msg(sb, KERN_ERR, "can't get new inode");
  goto err_freesgi;
 }




 sbi->s_buddy_cache->i_ino = EXT4_BAD_INO;
 EXT4_I(sbi->s_buddy_cache)->i_disksize = 0;
 for (i = 0; i < ngroups; i++) {
  cond_resched();
  desc = ext4_get_group_desc(sb, i, ((void*)0));
  if (desc == ((void*)0)) {
   ext4_msg(sb, KERN_ERR, "can't read descriptor %u", i);
   goto err_freebuddy;
  }
  if (ext4_mb_add_groupinfo(sb, i, desc) != 0)
   goto err_freebuddy;
 }

 return 0;

err_freebuddy:
 cachep = get_groupinfo_cache(sb->s_blocksize_bits);
 while (i-- > 0)
  kmem_cache_free(cachep, ext4_get_group_info(sb, i));
 i = sbi->s_group_info_size;
 while (i-- > 0)
  kfree(sbi->s_group_info[i]);
 iput(sbi->s_buddy_cache);
err_freesgi:
 kvfree(sbi->s_group_info);
 return -ENOMEM;
}
