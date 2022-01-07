
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int xattr_sem; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_STATE_NO_EXPAND ;
 int ext4_clear_inode_state (struct inode*,int ) ;
 int up_write (int *) ;

__attribute__((used)) static inline void ext4_write_unlock_xattr(struct inode *inode, int *save)
{
 if (*save == 0)
  ext4_clear_inode_state(inode, EXT4_STATE_NO_EXPAND);
 up_write(&EXT4_I(inode)->xattr_sem);
}
