
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iomap {scalar_t__ offset; scalar_t__ length; int type; int flags; scalar_t__ addr; int bdev; } ;
struct inode {scalar_t__ i_blkbits; } ;
struct buffer_head {scalar_t__ b_blocknr; int b_bdev; } ;
typedef scalar_t__ sector_t ;
typedef scalar_t__ loff_t ;


 int BUG_ON (int) ;

 int IOMAP_F_NEW ;



 int buffer_uptodate (struct buffer_head*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int set_buffer_delay (struct buffer_head*) ;
 int set_buffer_mapped (struct buffer_head*) ;
 int set_buffer_new (struct buffer_head*) ;
 int set_buffer_unwritten (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;

__attribute__((used)) static void
iomap_to_bh(struct inode *inode, sector_t block, struct buffer_head *bh,
  struct iomap *iomap)
{
 loff_t offset = block << inode->i_blkbits;

 bh->b_bdev = iomap->bdev;







 BUG_ON(offset >= iomap->offset + iomap->length);

 switch (iomap->type) {
 case 130:





  if (!buffer_uptodate(bh) ||
      (offset >= i_size_read(inode)))
   set_buffer_new(bh);
  break;
 case 131:
  if (!buffer_uptodate(bh) ||
      (offset >= i_size_read(inode)))
   set_buffer_new(bh);
  set_buffer_uptodate(bh);
  set_buffer_mapped(bh);
  set_buffer_delay(bh);
  break;
 case 128:





  set_buffer_new(bh);
  set_buffer_unwritten(bh);

 case 129:
  if ((iomap->flags & IOMAP_F_NEW) ||
      offset >= i_size_read(inode))
   set_buffer_new(bh);
  bh->b_blocknr = (iomap->addr + offset - iomap->offset) >>
    inode->i_blkbits;
  set_buffer_mapped(bh);
  break;
 }
}
