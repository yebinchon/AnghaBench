
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct ext4_sb_info {scalar_t__ s_want_extra_isize; } ;
struct ext4_iloc {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {scalar_t__ i_extra_isize; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 struct ext4_sb_info* EXT4_SB (int ) ;
 int _RET_IP_ ;
 int ext4_mark_iloc_dirty (int *,struct inode*,struct ext4_iloc*) ;
 int ext4_reserve_inode_write (int *,struct inode*,struct ext4_iloc*) ;
 int ext4_try_to_expand_extra_isize (struct inode*,scalar_t__,struct ext4_iloc,int *) ;
 int might_sleep () ;
 int trace_ext4_mark_inode_dirty (struct inode*,int ) ;

int ext4_mark_inode_dirty(handle_t *handle, struct inode *inode)
{
 struct ext4_iloc iloc;
 struct ext4_sb_info *sbi = EXT4_SB(inode->i_sb);
 int err;

 might_sleep();
 trace_ext4_mark_inode_dirty(inode, _RET_IP_);
 err = ext4_reserve_inode_write(handle, inode, &iloc);
 if (err)
  return err;

 if (EXT4_I(inode)->i_extra_isize < sbi->s_want_extra_isize)
  ext4_try_to_expand_extra_isize(inode, sbi->s_want_extra_isize,
            iloc, handle);

 return ext4_mark_iloc_dirty(handle, inode, &iloc);
}
