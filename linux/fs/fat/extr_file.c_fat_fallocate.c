
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct msdos_sb_info {int cluster_size; int cluster_bits; } ;
struct inode {int i_blocks; int i_mode; struct super_block* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 long EOPNOTSUPP ;
 int FALLOC_FL_KEEP_SIZE ;
 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 int S_ISREG (int ) ;
 int fat_add_cluster (struct inode*) ;
 int fat_cont_expand (struct inode*,int) ;
 int i_size_read (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;

__attribute__((used)) static long fat_fallocate(struct file *file, int mode,
     loff_t offset, loff_t len)
{
 int nr_cluster;
 loff_t mm_bytes;
 loff_t ondisksize;
 struct inode *inode = file->f_mapping->host;
 struct super_block *sb = inode->i_sb;
 struct msdos_sb_info *sbi = MSDOS_SB(sb);
 int err = 0;


 if (mode & ~FALLOC_FL_KEEP_SIZE)
  return -EOPNOTSUPP;


 if (!S_ISREG(inode->i_mode))
  return -EOPNOTSUPP;

 inode_lock(inode);
 if (mode & FALLOC_FL_KEEP_SIZE) {
  ondisksize = inode->i_blocks << 9;
  if ((offset + len) <= ondisksize)
   goto error;


  mm_bytes = offset + len - ondisksize;
  nr_cluster = (mm_bytes + (sbi->cluster_size - 1)) >>
   sbi->cluster_bits;


  while (nr_cluster-- > 0) {
   err = fat_add_cluster(inode);
   if (err)
    goto error;
  }
 } else {
  if ((offset + len) <= i_size_read(inode))
   goto error;


  err = fat_cont_expand(inode, (offset + len));
 }

error:
 inode_unlock(inode);
 return err;
}
