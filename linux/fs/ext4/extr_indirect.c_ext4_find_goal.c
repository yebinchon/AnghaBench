
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int ext4_lblk_t ;
typedef int ext4_fsblk_t ;
typedef int Indirect ;


 int EXT4_MAX_BLOCK_FILE_PHYS ;
 int ext4_find_near (struct inode*,int *) ;

__attribute__((used)) static ext4_fsblk_t ext4_find_goal(struct inode *inode, ext4_lblk_t block,
       Indirect *partial)
{
 ext4_fsblk_t goal;





 goal = ext4_find_near(inode, partial);
 goal = goal & EXT4_MAX_BLOCK_FILE_PHYS;
 return goal;
}
