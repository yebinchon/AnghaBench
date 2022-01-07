
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_nlink; TYPE_1__* i_sb; int __i_nlink; } ;
struct TYPE_2__ {int s_remove_count; } ;


 int WARN_ON (int) ;
 int atomic_long_inc (int *) ;

void drop_nlink(struct inode *inode)
{
 WARN_ON(inode->i_nlink == 0);
 inode->__i_nlink--;
 if (!inode->i_nlink)
  atomic_long_inc(&inode->i_sb->s_remove_count);
}
