
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; scalar_t__ addr; } ;
struct iomap_swapfile_info {TYPE_2__ iomap; TYPE_1__* sis; } ;
struct iomap {int type; int flags; scalar_t__ bdev; scalar_t__ addr; scalar_t__ length; } ;
struct inode {int dummy; } ;
typedef int loff_t ;
struct TYPE_3__ {scalar_t__ bdev; } ;


 int EINVAL ;
 int IOMAP_F_DIRTY ;
 int IOMAP_F_SHARED ;



 int iomap_swapfile_add_extent (struct iomap_swapfile_info*) ;
 int memcpy (TYPE_2__*,struct iomap*,int) ;
 int pr_err (char*) ;

__attribute__((used)) static loff_t iomap_swapfile_activate_actor(struct inode *inode, loff_t pos,
  loff_t count, void *data, struct iomap *iomap)
{
 struct iomap_swapfile_info *isi = data;
 int error;

 switch (iomap->type) {
 case 129:
 case 128:

  break;
 case 130:

  pr_err("swapon: file is inline\n");
  return -EINVAL;
 default:
  pr_err("swapon: file has unallocated extents\n");
  return -EINVAL;
 }


 if (iomap->flags & IOMAP_F_DIRTY) {
  pr_err("swapon: file is not committed\n");
  return -EINVAL;
 }
 if (iomap->flags & IOMAP_F_SHARED) {
  pr_err("swapon: file has shared extents\n");
  return -EINVAL;
 }


 if (iomap->bdev != isi->sis->bdev) {
  pr_err("swapon: file is on multiple devices\n");
  return -EINVAL;
 }

 if (isi->iomap.length == 0) {

  memcpy(&isi->iomap, iomap, sizeof(isi->iomap));
 } else if (isi->iomap.addr + isi->iomap.length == iomap->addr) {

  isi->iomap.length += iomap->length;
 } else {

  error = iomap_swapfile_add_extent(isi);
  if (error)
   return error;
  memcpy(&isi->iomap, iomap, sizeof(isi->iomap));
 }
 return count;
}
