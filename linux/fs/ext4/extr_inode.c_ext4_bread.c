
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
typedef int ext4_lblk_t ;


 int EIO ;
 struct buffer_head* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int REQ_META ;
 int REQ_OP_READ ;
 int REQ_PRIO ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 scalar_t__ ext4_buffer_uptodate (struct buffer_head*) ;
 struct buffer_head* ext4_getblk (int *,struct inode*,int ,int) ;
 int ll_rw_block (int ,int,int,struct buffer_head**) ;
 int put_bh (struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

struct buffer_head *ext4_bread(handle_t *handle, struct inode *inode,
          ext4_lblk_t block, int map_flags)
{
 struct buffer_head *bh;

 bh = ext4_getblk(handle, inode, block, map_flags);
 if (IS_ERR(bh))
  return bh;
 if (!bh || ext4_buffer_uptodate(bh))
  return bh;
 ll_rw_block(REQ_OP_READ, REQ_META | REQ_PRIO, 1, &bh);
 wait_on_buffer(bh);
 if (buffer_uptodate(bh))
  return bh;
 put_bh(bh);
 return ERR_PTR(-EIO);
}
