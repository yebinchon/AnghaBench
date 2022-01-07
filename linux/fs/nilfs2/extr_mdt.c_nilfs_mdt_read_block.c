
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; int i_sb; } ;
struct buffer_head {int dummy; } ;


 int EBUSY ;
 int EEXIST ;
 int EIO ;
 int KERN_ERR ;
 int NILFS_MDT_MAX_RA_BLOCKS ;
 int REQ_OP_READ ;
 int REQ_RAHEAD ;
 int brelse (struct buffer_head*) ;
 int buffer_locked (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 scalar_t__ likely (int) ;
 int nilfs_mdt_submit_block (struct inode*,unsigned long,int ,int ,struct buffer_head**) ;
 int nilfs_msg (int ,int ,char*,int ,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int wait_on_buffer (struct buffer_head*) ;

__attribute__((used)) static int nilfs_mdt_read_block(struct inode *inode, unsigned long block,
    int readahead, struct buffer_head **out_bh)
{
 struct buffer_head *first_bh, *bh;
 unsigned long blkoff;
 int i, nr_ra_blocks = NILFS_MDT_MAX_RA_BLOCKS;
 int err;

 err = nilfs_mdt_submit_block(inode, block, REQ_OP_READ, 0, &first_bh);
 if (err == -EEXIST)
  goto out;

 if (unlikely(err))
  goto failed;

 if (readahead) {
  blkoff = block + 1;
  for (i = 0; i < nr_ra_blocks; i++, blkoff++) {
   err = nilfs_mdt_submit_block(inode, blkoff, REQ_OP_READ,
           REQ_RAHEAD, &bh);
   if (likely(!err || err == -EEXIST))
    brelse(bh);
   else if (err != -EBUSY)
    break;

   if (!buffer_locked(first_bh))
    goto out_no_wait;
  }
 }

 wait_on_buffer(first_bh);

 out_no_wait:
 err = -EIO;
 if (!buffer_uptodate(first_bh)) {
  nilfs_msg(inode->i_sb, KERN_ERR,
     "I/O error reading meta-data file (ino=%lu, block-offset=%lu)",
     inode->i_ino, block);
  goto failed_bh;
 }
 out:
 *out_bh = first_bh;
 return 0;

 failed_bh:
 brelse(first_bh);
 failed:
 return err;
}
