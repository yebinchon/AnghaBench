
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iomap_ops {int dummy; } ;
struct inode {int dummy; } ;
typedef scalar_t__ loff_t ;


 int IOMAP_WRITE ;
 scalar_t__ iomap_apply (struct inode*,scalar_t__,scalar_t__,int ,struct iomap_ops const*,int *,int ) ;
 int iomap_dirty_actor ;

int
iomap_file_dirty(struct inode *inode, loff_t pos, loff_t len,
  const struct iomap_ops *ops)
{
 loff_t ret;

 while (len) {
  ret = iomap_apply(inode, pos, len, IOMAP_WRITE, ops, ((void*)0),
    iomap_dirty_actor);
  if (ret <= 0)
   return ret;
  pos += ret;
  len -= ret;
 }

 return 0;
}
