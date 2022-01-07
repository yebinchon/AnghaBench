
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_nlink; unsigned int __i_nlink; TYPE_1__* i_sb; } ;
struct TYPE_2__ {int s_remove_count; } ;


 int atomic_long_dec (int *) ;
 int clear_nlink (struct inode*) ;

void set_nlink(struct inode *inode, unsigned int nlink)
{
 if (!nlink) {
  clear_nlink(inode);
 } else {

  if (inode->i_nlink == 0)
   atomic_long_dec(&inode->i_sb->s_remove_count);

  inode->__i_nlink = nlink;
 }
}
