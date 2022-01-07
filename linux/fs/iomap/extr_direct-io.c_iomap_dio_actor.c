
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iomap_dio {int flags; } ;
struct iomap {int type; } ;
struct inode {int dummy; } ;
typedef int loff_t ;


 int EIO ;
 int IOMAP_DIO_WRITE ;




 int WARN_ON_ONCE (int) ;
 int iomap_dio_bio_actor (struct inode*,int ,int ,struct iomap_dio*,struct iomap*) ;
 int iomap_dio_hole_actor (int ,struct iomap_dio*) ;
 int iomap_dio_inline_actor (struct inode*,int ,int ,struct iomap_dio*,struct iomap*) ;

__attribute__((used)) static loff_t
iomap_dio_actor(struct inode *inode, loff_t pos, loff_t length,
  void *data, struct iomap *iomap)
{
 struct iomap_dio *dio = data;

 switch (iomap->type) {
 case 131:
  if (WARN_ON_ONCE(dio->flags & IOMAP_DIO_WRITE))
   return -EIO;
  return iomap_dio_hole_actor(length, dio);
 case 128:
  if (!(dio->flags & IOMAP_DIO_WRITE))
   return iomap_dio_hole_actor(length, dio);
  return iomap_dio_bio_actor(inode, pos, length, dio, iomap);
 case 129:
  return iomap_dio_bio_actor(inode, pos, length, dio, iomap);
 case 130:
  return iomap_dio_inline_actor(inode, pos, length, dio, iomap);
 default:
  WARN_ON_ONCE(1);
  return -EIO;
 }
}
