
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {struct squashfs_sb_info* s_fs_info; } ;
struct squashfs_sb_info {int * inode_lookup_table; } ;
typedef int ino ;
typedef int __le64 ;


 int SQUASHFS_LOOKUP_BLOCK (int) ;
 int SQUASHFS_LOOKUP_BLOCK_OFFSET (int) ;
 int TRACE (char*,int) ;
 long long le64_to_cpu (int ) ;
 int squashfs_read_metadata (struct super_block*,int *,int*,int*,int) ;

__attribute__((used)) static long long squashfs_inode_lookup(struct super_block *sb, int ino_num)
{
 struct squashfs_sb_info *msblk = sb->s_fs_info;
 int blk = SQUASHFS_LOOKUP_BLOCK(ino_num - 1);
 int offset = SQUASHFS_LOOKUP_BLOCK_OFFSET(ino_num - 1);
 u64 start = le64_to_cpu(msblk->inode_lookup_table[blk]);
 __le64 ino;
 int err;

 TRACE("Entered squashfs_inode_lookup, inode_number = %d\n", ino_num);

 err = squashfs_read_metadata(sb, &ino, &start, &offset, sizeof(ino));
 if (err < 0)
  return err;

 TRACE("squashfs_inode_lookup, inode = 0x%llx\n",
  (u64) le64_to_cpu(ino));

 return le64_to_cpu(ino);
}
