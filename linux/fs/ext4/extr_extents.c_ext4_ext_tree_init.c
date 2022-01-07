
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_extent_header {int eh_max; int eh_magic; scalar_t__ eh_entries; scalar_t__ eh_depth; } ;
typedef int handle_t ;


 int EXT4_EXT_MAGIC ;
 int cpu_to_le16 (int ) ;
 int ext4_ext_space_root (struct inode*,int ) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 struct ext4_extent_header* ext_inode_hdr (struct inode*) ;

int ext4_ext_tree_init(handle_t *handle, struct inode *inode)
{
 struct ext4_extent_header *eh;

 eh = ext_inode_hdr(inode);
 eh->eh_depth = 0;
 eh->eh_entries = 0;
 eh->eh_magic = EXT4_EXT_MAGIC;
 eh->eh_max = cpu_to_le16(ext4_ext_space_root(inode, 0));
 ext4_mark_inode_dirty(handle, inode);
 return 0;
}
