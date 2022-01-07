
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iomap {int type; } ;
struct inode {int dummy; } ;
typedef int loff_t ;




 int SEEK_HOLE ;
 int page_cache_seek_hole_data (struct inode*,int ,int ,int ) ;

__attribute__((used)) static loff_t
iomap_seek_hole_actor(struct inode *inode, loff_t offset, loff_t length,
        void *data, struct iomap *iomap)
{
 switch (iomap->type) {
 case 128:
  offset = page_cache_seek_hole_data(inode, offset, length,
         SEEK_HOLE);
  if (offset < 0)
   return length;

 case 129:
  *(loff_t *)data = offset;
  return 0;
 default:
  return length;
 }
}
