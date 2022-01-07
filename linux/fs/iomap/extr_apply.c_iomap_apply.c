
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iomap_ops {scalar_t__ (* iomap_begin ) (struct inode*,scalar_t__,scalar_t__,unsigned int,struct iomap*) ;scalar_t__ (* iomap_end ) (struct inode*,scalar_t__,scalar_t__,scalar_t__,unsigned int,struct iomap*) ;} ;
struct iomap {scalar_t__ offset; scalar_t__ length; int member_0; } ;
struct inode {int dummy; } ;
typedef scalar_t__ loff_t ;
typedef scalar_t__ (* iomap_actor_t ) (struct inode*,scalar_t__,scalar_t__,void*,struct iomap*) ;


 scalar_t__ EIO ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ stub1 (struct inode*,scalar_t__,scalar_t__,unsigned int,struct iomap*) ;
 scalar_t__ stub2 (struct inode*,scalar_t__,scalar_t__,scalar_t__,unsigned int,struct iomap*) ;

loff_t
iomap_apply(struct inode *inode, loff_t pos, loff_t length, unsigned flags,
  const struct iomap_ops *ops, void *data, iomap_actor_t actor)
{
 struct iomap iomap = { 0 };
 loff_t written = 0, ret;
 ret = ops->iomap_begin(inode, pos, length, flags, &iomap);
 if (ret)
  return ret;
 if (WARN_ON(iomap.offset > pos))
  return -EIO;
 if (WARN_ON(iomap.length == 0))
  return -EIO;





 if (iomap.offset + iomap.length < pos + length)
  length = iomap.offset + iomap.length - pos;






 written = actor(inode, pos, length, data, &iomap);





 if (ops->iomap_end) {
  ret = ops->iomap_end(inode, pos, length,
         written > 0 ? written : 0,
         flags, &iomap);
 }

 return written ? written : ret;
}
