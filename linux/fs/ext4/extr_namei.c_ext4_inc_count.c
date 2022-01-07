
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_nlink; } ;
typedef int handle_t ;


 int EXT4_LINK_MAX ;
 int inc_nlink (struct inode*) ;
 scalar_t__ is_dx (struct inode*) ;
 int set_nlink (struct inode*,int) ;

__attribute__((used)) static void ext4_inc_count(handle_t *handle, struct inode *inode)
{
 inc_nlink(inode);
 if (is_dx(inode) &&
     (inode->i_nlink > EXT4_LINK_MAX || inode->i_nlink == 2))
  set_nlink(inode, 1);
}
