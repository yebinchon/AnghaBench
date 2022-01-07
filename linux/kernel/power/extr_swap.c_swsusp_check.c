
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int orig_sig; int sig; } ;


 int EINVAL ;
 int FMODE_READ ;
 int HIBERNATE_SIG ;
 int IS_ERR (int ) ;
 int PAGE_SIZE ;
 int PTR_ERR (int ) ;
 int REQ_OP_READ ;
 int REQ_OP_WRITE ;
 int REQ_SYNC ;
 int blkdev_get_by_dev (int ,int ,int *) ;
 int blkdev_put (int ,int ) ;
 int clear_page (TYPE_1__*) ;
 int hib_resume_bdev ;
 int hib_submit_io (int ,int ,int ,TYPE_1__*,int *) ;
 int memcmp (int ,int ,int) ;
 int memcpy (int ,int ,int) ;
 int pr_debug (char*,...) ;
 int set_blocksize (int ,int ) ;
 TYPE_1__* swsusp_header ;
 int swsusp_resume_block ;
 int swsusp_resume_device ;

int swsusp_check(void)
{
 int error;

 hib_resume_bdev = blkdev_get_by_dev(swsusp_resume_device,
         FMODE_READ, ((void*)0));
 if (!IS_ERR(hib_resume_bdev)) {
  set_blocksize(hib_resume_bdev, PAGE_SIZE);
  clear_page(swsusp_header);
  error = hib_submit_io(REQ_OP_READ, 0,
     swsusp_resume_block,
     swsusp_header, ((void*)0));
  if (error)
   goto put;

  if (!memcmp(HIBERNATE_SIG, swsusp_header->sig, 10)) {
   memcpy(swsusp_header->sig, swsusp_header->orig_sig, 10);

   error = hib_submit_io(REQ_OP_WRITE, REQ_SYNC,
      swsusp_resume_block,
      swsusp_header, ((void*)0));
  } else {
   error = -EINVAL;
  }

put:
  if (error)
   blkdev_put(hib_resume_bdev, FMODE_READ);
  else
   pr_debug("Image signature found, resuming\n");
 } else {
  error = PTR_ERR(hib_resume_bdev);
 }

 if (error)
  pr_debug("Image not found (code %d)\n", error);

 return error;
}
