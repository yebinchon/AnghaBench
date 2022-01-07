
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; int i_ino; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ sector_t ;


 int map_bh (struct buffer_head*,int ,unsigned int) ;
 int pr_debug (char*,int ,unsigned long) ;
 unsigned int qnx6_block_map (struct inode*,scalar_t__) ;

__attribute__((used)) static int qnx6_get_block(struct inode *inode, sector_t iblock,
   struct buffer_head *bh, int create)
{
 unsigned phys;

 pr_debug("qnx6_get_block inode=[%ld] iblock=[%ld]\n",
   inode->i_ino, (unsigned long)iblock);

 phys = qnx6_block_map(inode, iblock);
 if (phys) {

  map_bh(bh, inode->i_sb, phys);
 }
 return 0;
}
