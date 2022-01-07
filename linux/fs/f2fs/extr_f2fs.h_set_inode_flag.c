
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* F2FS_I (struct inode*) ;
 int __mark_inode_dirty_flag (struct inode*,int,int) ;
 int set_bit (int,int *) ;
 int test_bit (int,int *) ;

__attribute__((used)) static inline void set_inode_flag(struct inode *inode, int flag)
{
 if (!test_bit(flag, &F2FS_I(inode)->flags))
  set_bit(flag, &F2FS_I(inode)->flags);
 __mark_inode_dirty_flag(inode, flag, 1);
}
