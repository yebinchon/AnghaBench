
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iov_iter {int dummy; } ;
struct TYPE_2__ {struct iov_iter* iter; } ;
struct iomap_dio {int flags; size_t size; TYPE_1__ submit; } ;
struct iomap {scalar_t__ inline_data; } ;
struct inode {scalar_t__ i_size; } ;
typedef scalar_t__ loff_t ;


 int BUG_ON (int) ;
 int IOMAP_DIO_WRITE ;
 scalar_t__ PAGE_SIZE ;
 size_t copy_from_iter (scalar_t__,scalar_t__,struct iov_iter*) ;
 size_t copy_to_iter (scalar_t__,scalar_t__,struct iov_iter*) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int mark_inode_dirty (struct inode*) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 scalar_t__ offset_in_page (scalar_t__) ;

__attribute__((used)) static loff_t
iomap_dio_inline_actor(struct inode *inode, loff_t pos, loff_t length,
  struct iomap_dio *dio, struct iomap *iomap)
{
 struct iov_iter *iter = dio->submit.iter;
 size_t copied;

 BUG_ON(pos + length > PAGE_SIZE - offset_in_page(iomap->inline_data));

 if (dio->flags & IOMAP_DIO_WRITE) {
  loff_t size = inode->i_size;

  if (pos > size)
   memset(iomap->inline_data + size, 0, pos - size);
  copied = copy_from_iter(iomap->inline_data + pos, length, iter);
  if (copied) {
   if (pos + copied > size)
    i_size_write(inode, pos + copied);
   mark_inode_dirty(inode);
  }
 } else {
  copied = copy_to_iter(iomap->inline_data + pos, length, iter);
 }
 dio->size += copied;
 return copied;
}
