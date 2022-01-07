
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mtime; int i_atime; int i_version; } ;
struct ext4_inode_info {unsigned long i_flags; int i_disksize; int i_data; } ;
typedef int loff_t ;


 unsigned long EXT4_FL_SHOULD_SWAP ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 int EXT_MAX_BLOCKS ;
 int ext4_es_remove_extent (struct inode*,int ,int ) ;
 int i_size_read (struct inode*) ;
 int i_size_write (struct inode*,int ) ;
 int memswap (int ,int ,int) ;
 int swap (int ,int ) ;

__attribute__((used)) static void swap_inode_data(struct inode *inode1, struct inode *inode2)
{
 loff_t isize;
 struct ext4_inode_info *ei1;
 struct ext4_inode_info *ei2;
 unsigned long tmp;

 ei1 = EXT4_I(inode1);
 ei2 = EXT4_I(inode2);

 swap(inode1->i_version, inode2->i_version);
 swap(inode1->i_atime, inode2->i_atime);
 swap(inode1->i_mtime, inode2->i_mtime);

 memswap(ei1->i_data, ei2->i_data, sizeof(ei1->i_data));
 tmp = ei1->i_flags & EXT4_FL_SHOULD_SWAP;
 ei1->i_flags = (ei2->i_flags & EXT4_FL_SHOULD_SWAP) |
  (ei1->i_flags & ~EXT4_FL_SHOULD_SWAP);
 ei2->i_flags = tmp | (ei2->i_flags & ~EXT4_FL_SHOULD_SWAP);
 swap(ei1->i_disksize, ei2->i_disksize);
 ext4_es_remove_extent(inode1, 0, EXT_MAX_BLOCKS);
 ext4_es_remove_extent(inode2, 0, EXT_MAX_BLOCKS);

 isize = i_size_read(inode1);
 i_size_write(inode1, i_size_read(inode2));
 i_size_write(inode2, isize);
}
