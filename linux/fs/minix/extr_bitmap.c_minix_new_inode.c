
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct super_block {int s_blocksize; } ;
struct minix_sb_info {int s_imap_blocks; unsigned long s_ninodes; struct buffer_head** s_imap; } ;
struct inode {unsigned long i_ino; scalar_t__ i_blocks; int i_ctime; int i_atime; int i_mtime; struct super_block* i_sb; } ;
struct buffer_head {int b_data; } ;
struct TYPE_2__ {int u; } ;


 int ENOMEM ;
 int ENOSPC ;
 int bitmap_lock ;
 int current_time (struct inode*) ;
 int inode_init_owner (struct inode*,struct inode const*,int ) ;
 int insert_inode_hash (struct inode*) ;
 int iput (struct inode*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int mark_inode_dirty (struct inode*) ;
 int memset (int *,int ,int) ;
 unsigned long minix_find_first_zero_bit (int ,int) ;
 TYPE_1__* minix_i (struct inode*) ;
 struct minix_sb_info* minix_sb (struct super_block*) ;
 scalar_t__ minix_test_and_set_bit (unsigned long,int ) ;
 struct inode* new_inode (struct super_block*) ;
 int printk (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct inode *minix_new_inode(const struct inode *dir, umode_t mode, int *error)
{
 struct super_block *sb = dir->i_sb;
 struct minix_sb_info *sbi = minix_sb(sb);
 struct inode *inode = new_inode(sb);
 struct buffer_head * bh;
 int bits_per_zone = 8 * sb->s_blocksize;
 unsigned long j;
 int i;

 if (!inode) {
  *error = -ENOMEM;
  return ((void*)0);
 }
 j = bits_per_zone;
 bh = ((void*)0);
 *error = -ENOSPC;
 spin_lock(&bitmap_lock);
 for (i = 0; i < sbi->s_imap_blocks; i++) {
  bh = sbi->s_imap[i];
  j = minix_find_first_zero_bit(bh->b_data, bits_per_zone);
  if (j < bits_per_zone)
   break;
 }
 if (!bh || j >= bits_per_zone) {
  spin_unlock(&bitmap_lock);
  iput(inode);
  return ((void*)0);
 }
 if (minix_test_and_set_bit(j, bh->b_data)) {
  spin_unlock(&bitmap_lock);
  printk("minix_new_inode: bit already set\n");
  iput(inode);
  return ((void*)0);
 }
 spin_unlock(&bitmap_lock);
 mark_buffer_dirty(bh);
 j += i * bits_per_zone;
 if (!j || j > sbi->s_ninodes) {
  iput(inode);
  return ((void*)0);
 }
 inode_init_owner(inode, dir, mode);
 inode->i_ino = j;
 inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
 inode->i_blocks = 0;
 memset(&minix_i(inode)->u, 0, sizeof(minix_i(inode)->u));
 insert_inode_hash(inode);
 mark_inode_dirty(inode);

 *error = 0;
 return inode;
}
