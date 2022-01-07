
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;


 int EIO ;
 int ENOMEM ;
 struct buffer_head* ERR_PTR (int ) ;
 int REQ_META ;
 int REQ_OP_READ ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int ll_rw_block (int ,int,int,struct buffer_head**) ;
 int put_bh (struct buffer_head*) ;
 struct buffer_head* sb_getblk (struct super_block*,int ) ;
 int wait_on_buffer (struct buffer_head*) ;

struct buffer_head *
ext4_sb_bread(struct super_block *sb, sector_t block, int op_flags)
{
 struct buffer_head *bh = sb_getblk(sb, block);

 if (bh == ((void*)0))
  return ERR_PTR(-ENOMEM);
 if (buffer_uptodate(bh))
  return bh;
 ll_rw_block(REQ_OP_READ, REQ_META | op_flags, 1, &bh);
 wait_on_buffer(bh);
 if (buffer_uptodate(bh))
  return bh;
 put_bh(bh);
 return ERR_PTR(-EIO);
}
