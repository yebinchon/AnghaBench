
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int b_blocknr_t ;


 int map_bh (struct buffer_head*,int ,int ) ;

__attribute__((used)) static inline void set_block_dev_mapped(struct buffer_head *bh,
     b_blocknr_t block, struct inode *inode)
{
 map_bh(bh, inode->i_sb, block);
}
