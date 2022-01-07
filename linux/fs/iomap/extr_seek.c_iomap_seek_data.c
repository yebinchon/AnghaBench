
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iomap_ops {int dummy; } ;
struct inode {int dummy; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ ENXIO ;
 int IOMAP_REPORT ;
 scalar_t__ i_size_read (struct inode*) ;
 scalar_t__ iomap_apply (struct inode*,scalar_t__,scalar_t__,int ,struct iomap_ops const*,scalar_t__*,int ) ;
 int iomap_seek_data_actor ;

loff_t
iomap_seek_data(struct inode *inode, loff_t offset, const struct iomap_ops *ops)
{
 loff_t size = i_size_read(inode);
 loff_t length = size - offset;
 loff_t ret;


 if (offset < 0 || offset >= size)
  return -ENXIO;

 while (length > 0) {
  ret = iomap_apply(inode, offset, length, IOMAP_REPORT, ops,
      &offset, iomap_seek_data_actor);
  if (ret < 0)
   return ret;
  if (ret == 0)
   break;

  offset += ret;
  length -= ret;
 }

 if (length <= 0)
  return -ENXIO;
 return offset;
}
