
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int udf_pblk_t ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {int b_blocknr; int b_data; scalar_t__ b_state; } ;
struct TYPE_2__ {int s_blocksize; } ;


 scalar_t__ buffer_mapped (struct buffer_head*) ;
 scalar_t__ buffer_new (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int mark_buffer_dirty_inode (struct buffer_head*,struct inode*) ;
 int memset (int ,int,int ) ;
 struct buffer_head* sb_getblk (TYPE_1__*,int) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int udf_get_block (struct inode*,int ,struct buffer_head*,int) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static struct buffer_head *udf_getblk(struct inode *inode, udf_pblk_t block,
          int create, int *err)
{
 struct buffer_head *bh;
 struct buffer_head dummy;

 dummy.b_state = 0;
 dummy.b_blocknr = -1000;
 *err = udf_get_block(inode, block, &dummy, create);
 if (!*err && buffer_mapped(&dummy)) {
  bh = sb_getblk(inode->i_sb, dummy.b_blocknr);
  if (buffer_new(&dummy)) {
   lock_buffer(bh);
   memset(bh->b_data, 0x00, inode->i_sb->s_blocksize);
   set_buffer_uptodate(bh);
   unlock_buffer(bh);
   mark_buffer_dirty_inode(bh, inode);
  }
  return bh;
 }

 return ((void*)0);
}
