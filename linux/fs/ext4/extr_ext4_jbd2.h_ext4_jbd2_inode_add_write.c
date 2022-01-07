
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef int loff_t ;
typedef int handle_t ;
struct TYPE_2__ {int jinode; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 scalar_t__ ext4_handle_valid (int *) ;
 int jbd2_journal_inode_ranged_write (int *,int ,int ,int ) ;

__attribute__((used)) static inline int ext4_jbd2_inode_add_write(handle_t *handle,
  struct inode *inode, loff_t start_byte, loff_t length)
{
 if (ext4_handle_valid(handle))
  return jbd2_journal_inode_ranged_write(handle,
    EXT4_I(inode)->jinode, start_byte, length);
 return 0;
}
