
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext4_inode_info {scalar_t__* i_data; } ;
typedef int ext4_fsblk_t ;
typedef scalar_t__ __le32 ;
struct TYPE_5__ {TYPE_1__* bh; scalar_t__* p; } ;
struct TYPE_4__ {int b_blocknr; scalar_t__ b_data; } ;
typedef TYPE_2__ Indirect ;


 struct ext4_inode_info* EXT4_I (struct inode*) ;
 int ext4_inode_to_goal_block (struct inode*) ;
 int le32_to_cpu (scalar_t__) ;

__attribute__((used)) static ext4_fsblk_t ext4_find_near(struct inode *inode, Indirect *ind)
{
 struct ext4_inode_info *ei = EXT4_I(inode);
 __le32 *start = ind->bh ? (__le32 *) ind->bh->b_data : ei->i_data;
 __le32 *p;


 for (p = ind->p - 1; p >= start; p--) {
  if (*p)
   return le32_to_cpu(*p);
 }


 if (ind->bh)
  return ind->bh->b_blocknr;





 return ext4_inode_to_goal_block(inode);
}
