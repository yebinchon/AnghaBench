
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct msdos_sb_info {int * inode_hashtable; int inode_hash_lock; } ;


 int FAT_HASH_SIZE ;
 int INIT_HLIST_HEAD (int *) ;
 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void fat_hash_init(struct super_block *sb)
{
 struct msdos_sb_info *sbi = MSDOS_SB(sb);
 int i;

 spin_lock_init(&sbi->inode_hash_lock);
 for (i = 0; i < FAT_HASH_SIZE; i++)
  INIT_HLIST_HEAD(&sbi->inode_hashtable[i]);
}
