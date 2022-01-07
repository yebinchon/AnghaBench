
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int xattr_sem; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_STATE_NO_EXPAND ;
 scalar_t__ down_write_trylock (int *) ;
 int ext4_set_inode_state (struct inode*,int ) ;
 int ext4_test_inode_state (struct inode*,int ) ;

__attribute__((used)) static inline int ext4_write_trylock_xattr(struct inode *inode, int *save)
{
 if (down_write_trylock(&EXT4_I(inode)->xattr_sem) == 0)
  return 0;
 *save = ext4_test_inode_state(inode, EXT4_STATE_NO_EXPAND);
 ext4_set_inode_state(inode, EXT4_STATE_NO_EXPAND);
 return 1;
}
