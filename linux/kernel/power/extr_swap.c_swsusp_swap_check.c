
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bd_dev; } ;


 int FMODE_WRITE ;
 int PAGE_SIZE ;
 int blkdev_get (TYPE_1__*,int ,int *) ;
 int blkdev_put (TYPE_1__*,int ) ;
 TYPE_1__* hib_resume_bdev ;
 int root_swap ;
 int set_blocksize (TYPE_1__*,int ) ;
 int swap_type_of (int ,int ,TYPE_1__**) ;
 int swsusp_resume_block ;
 int swsusp_resume_device ;

__attribute__((used)) static int swsusp_swap_check(void)
{
 int res;

 res = swap_type_of(swsusp_resume_device, swsusp_resume_block,
   &hib_resume_bdev);
 if (res < 0)
  return res;

 root_swap = res;
 res = blkdev_get(hib_resume_bdev, FMODE_WRITE, ((void*)0));
 if (res)
  return res;

 res = set_blocksize(hib_resume_bdev, PAGE_SIZE);
 if (res < 0)
  blkdev_put(hib_resume_bdev, FMODE_WRITE);






 swsusp_resume_device = hib_resume_bdev->bd_dev;
 return res;
}
