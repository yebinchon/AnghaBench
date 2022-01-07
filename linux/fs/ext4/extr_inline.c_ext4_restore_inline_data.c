
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_iloc {int dummy; } ;
typedef int handle_t ;


 int EXT4_STATE_MAY_INLINE_DATA ;
 int ext4_create_inline_data (int *,struct inode*,int) ;
 int ext4_set_inode_state (struct inode*,int ) ;
 int ext4_write_inline_data (struct inode*,struct ext4_iloc*,void*,int ,int) ;

__attribute__((used)) static void ext4_restore_inline_data(handle_t *handle, struct inode *inode,
         struct ext4_iloc *iloc,
         void *buf, int inline_size)
{
 ext4_create_inline_data(handle, inode, inline_size);
 ext4_write_inline_data(inode, iloc, buf, 0, inline_size);
 ext4_set_inode_state(inode, EXT4_STATE_MAY_INLINE_DATA);
}
