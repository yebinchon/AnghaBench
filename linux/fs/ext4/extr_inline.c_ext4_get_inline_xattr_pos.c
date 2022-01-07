
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext4_xattr_ibody_header {int dummy; } ;
struct ext4_xattr_entry {int e_value_offs; } ;
struct ext4_iloc {int dummy; } ;
struct TYPE_2__ {int i_inline_off; } ;


 int BUG_ON (int) ;
 TYPE_1__* EXT4_I (struct inode*) ;
 scalar_t__ IFIRST (struct ext4_xattr_ibody_header*) ;
 struct ext4_xattr_ibody_header* IHDR (struct inode*,scalar_t__) ;
 scalar_t__ ext4_raw_inode (struct ext4_iloc*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void *ext4_get_inline_xattr_pos(struct inode *inode,
           struct ext4_iloc *iloc)
{
 struct ext4_xattr_entry *entry;
 struct ext4_xattr_ibody_header *header;

 BUG_ON(!EXT4_I(inode)->i_inline_off);

 header = IHDR(inode, ext4_raw_inode(iloc));
 entry = (struct ext4_xattr_entry *)((void *)ext4_raw_inode(iloc) +
         EXT4_I(inode)->i_inline_off);

 return (void *)IFIRST(header) + le16_to_cpu(entry->e_value_offs);
}
