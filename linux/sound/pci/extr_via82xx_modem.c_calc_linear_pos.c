
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct viadev {unsigned int lastpos; unsigned int bufsize; TYPE_1__* idx_table; int bufsize2; int tbl_entries; } ;
struct via82xx_modem {TYPE_2__* card; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {unsigned int size; unsigned int offset; } ;


 scalar_t__ check_invalid_pos (struct viadev*,unsigned int) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int,int) ;

__attribute__((used)) static inline unsigned int calc_linear_pos(struct via82xx_modem *chip,
        struct viadev *viadev,
        unsigned int idx,
        unsigned int count)
{
 unsigned int size, res;

 size = viadev->idx_table[idx].size;
 res = viadev->idx_table[idx].offset + size - count;


 if (size < count) {
  dev_err(chip->card->dev,
   "invalid via82xx_cur_ptr (size = %d, count = %d)\n",
      (int)size, (int)count);
  res = viadev->lastpos;
 } else if (check_invalid_pos(viadev, res)) {







  if (count && size < count) {
   dev_dbg(chip->card->dev,
    "invalid via82xx_cur_ptr, using last valid pointer\n");
   res = viadev->lastpos;
  } else {
   if (! count)

    res = viadev->idx_table[idx].offset;
   else



    res = viadev->idx_table[idx].offset + size;
   if (check_invalid_pos(viadev, res)) {
    dev_dbg(chip->card->dev,
     "invalid via82xx_cur_ptr (2), using last valid pointer\n");
    res = viadev->lastpos;
   }
  }
 }
 viadev->lastpos = res;
 if (res >= viadev->bufsize)
  res -= viadev->bufsize;
 return res;
}
