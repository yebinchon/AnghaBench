
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fmode_t ;


 scalar_t__ IS_ERR (int ) ;
 int blkdev_put (int ,int ) ;
 int hib_resume_bdev ;
 int pr_debug (char*) ;

void swsusp_close(fmode_t mode)
{
 if (IS_ERR(hib_resume_bdev)) {
  pr_debug("Image device not initialised\n");
  return;
 }

 blkdev_put(hib_resume_bdev, mode);
}
