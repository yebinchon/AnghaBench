
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ ext4_lblk_t ;


 int EIO ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int PTR_ERR (struct buffer_head*) ;
 int REQ_META ;
 int REQ_OP_READ ;
 int REQ_PRIO ;
 int brelse (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int ext4_buffer_uptodate (struct buffer_head*) ;
 struct buffer_head* ext4_getblk (int *,struct inode*,scalar_t__,int ) ;
 int ll_rw_block (int ,int,int,struct buffer_head**) ;
 int wait_on_buffer (struct buffer_head*) ;

int ext4_bread_batch(struct inode *inode, ext4_lblk_t block, int bh_count,
       bool wait, struct buffer_head **bhs)
{
 int i, err;

 for (i = 0; i < bh_count; i++) {
  bhs[i] = ext4_getblk(((void*)0), inode, block + i, 0 );
  if (IS_ERR(bhs[i])) {
   err = PTR_ERR(bhs[i]);
   bh_count = i;
   goto out_brelse;
  }
 }

 for (i = 0; i < bh_count; i++)

  if (bhs[i] && !ext4_buffer_uptodate(bhs[i]))
   ll_rw_block(REQ_OP_READ, REQ_META | REQ_PRIO, 1,
        &bhs[i]);

 if (!wait)
  return 0;

 for (i = 0; i < bh_count; i++)
  if (bhs[i])
   wait_on_buffer(bhs[i]);

 for (i = 0; i < bh_count; i++) {
  if (bhs[i] && !buffer_uptodate(bhs[i])) {
   err = -EIO;
   goto out_brelse;
  }
 }
 return 0;

out_brelse:
 for (i = 0; i < bh_count; i++) {
  brelse(bhs[i]);
  bhs[i] = ((void*)0);
 }
 return err;
}
