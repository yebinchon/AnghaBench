
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int xattr_sem; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_STATE_NO_EXPAND ;
 int down_write (int *) ;
 int ext4_set_inode_state (struct inode*,int ) ;
 int ext4_test_inode_state (struct inode*,int ) ;

__attribute__((used)) static inline void ext4_write_lock_xattr(struct inode *inode, int *save)
{
 down_write(&EXT4_I(inode)->xattr_sem);
 *save = ext4_test_inode_state(inode, EXT4_STATE_NO_EXPAND);
 ext4_set_inode_state(inode, EXT4_STATE_NO_EXPAND);
}
