
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_bdev; } ;
struct nilfs_transaction_info {int dummy; } ;
struct inode {int i_mapping; struct super_block* i_sb; } ;
struct buffer_head {int b_page; int b_bdev; } ;


 int EEXIST ;
 int ENOMEM ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int get_bh (struct buffer_head*) ;
 scalar_t__ likely (int) ;
 struct buffer_head* nilfs_grab_buffer (struct inode*,int ,unsigned long,int ) ;
 int nilfs_mdt_insert_new_block (struct inode*,unsigned long,struct buffer_head*,void (*) (struct inode*,struct buffer_head*,void*)) ;
 int nilfs_transaction_abort (struct super_block*) ;
 int nilfs_transaction_begin (struct super_block*,struct nilfs_transaction_info*,int ) ;
 int nilfs_transaction_commit (struct super_block*) ;
 int put_page (int ) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (int ) ;
 int wait_on_buffer (struct buffer_head*) ;

__attribute__((used)) static int nilfs_mdt_create_block(struct inode *inode, unsigned long block,
      struct buffer_head **out_bh,
      void (*init_block)(struct inode *,
           struct buffer_head *,
           void *))
{
 struct super_block *sb = inode->i_sb;
 struct nilfs_transaction_info ti;
 struct buffer_head *bh;
 int err;

 nilfs_transaction_begin(sb, &ti, 0);

 err = -ENOMEM;
 bh = nilfs_grab_buffer(inode, inode->i_mapping, block, 0);
 if (unlikely(!bh))
  goto failed_unlock;

 err = -EEXIST;
 if (buffer_uptodate(bh))
  goto failed_bh;

 wait_on_buffer(bh);
 if (buffer_uptodate(bh))
  goto failed_bh;

 bh->b_bdev = sb->s_bdev;
 err = nilfs_mdt_insert_new_block(inode, block, bh, init_block);
 if (likely(!err)) {
  get_bh(bh);
  *out_bh = bh;
 }

 failed_bh:
 unlock_page(bh->b_page);
 put_page(bh->b_page);
 brelse(bh);

 failed_unlock:
 if (likely(!err))
  err = nilfs_transaction_commit(sb);
 else
  nilfs_transaction_abort(sb);

 return err;
}
