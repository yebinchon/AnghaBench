
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_nlink; int i_state; int __i_nlink; TYPE_1__* i_sb; } ;
struct TYPE_2__ {int s_remove_count; } ;


 int I_LINKABLE ;
 int WARN_ON (int) ;
 int atomic_long_dec (int *) ;
 scalar_t__ unlikely (int) ;

void inc_nlink(struct inode *inode)
{
 if (unlikely(inode->i_nlink == 0)) {
  WARN_ON(!(inode->i_state & I_LINKABLE));
  atomic_long_dec(&inode->i_sb->s_remove_count);
 }

 inode->__i_nlink++;
}
