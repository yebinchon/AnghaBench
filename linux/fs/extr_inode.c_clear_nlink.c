
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; scalar_t__ __i_nlink; scalar_t__ i_nlink; } ;
struct TYPE_2__ {int s_remove_count; } ;


 int atomic_long_inc (int *) ;

void clear_nlink(struct inode *inode)
{
 if (inode->i_nlink) {
  inode->__i_nlink = 0;
  atomic_long_inc(&inode->i_sb->s_remove_count);
 }
}
