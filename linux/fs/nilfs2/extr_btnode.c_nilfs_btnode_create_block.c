
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {int b_page; int b_blocknr; int b_bdev; int b_data; } ;
struct address_space {int dummy; } ;
typedef int __u64 ;
struct TYPE_2__ {int s_bdev; } ;


 int BH_NILFS_Node ;
 int BIT (int ) ;
 int BUG () ;
 struct inode* NILFS_BTNC_I (struct address_space*) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 scalar_t__ buffer_mapped (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int i_blocksize (struct inode*) ;
 int memset (int ,int ,int ) ;
 struct buffer_head* nilfs_grab_buffer (struct inode*,struct address_space*,int ,int ) ;
 int put_page (int ) ;
 int set_buffer_mapped (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (int ) ;

struct buffer_head *
nilfs_btnode_create_block(struct address_space *btnc, __u64 blocknr)
{
 struct inode *inode = NILFS_BTNC_I(btnc);
 struct buffer_head *bh;

 bh = nilfs_grab_buffer(inode, btnc, blocknr, BIT(BH_NILFS_Node));
 if (unlikely(!bh))
  return ((void*)0);

 if (unlikely(buffer_mapped(bh) || buffer_uptodate(bh) ||
       buffer_dirty(bh))) {
  brelse(bh);
  BUG();
 }
 memset(bh->b_data, 0, i_blocksize(inode));
 bh->b_bdev = inode->i_sb->s_bdev;
 bh->b_blocknr = blocknr;
 set_buffer_mapped(bh);
 set_buffer_uptodate(bh);

 unlock_page(bh->b_page);
 put_page(bh->b_page);
 return bh;
}
