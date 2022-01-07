
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct swap_map_handle {int crc32; int first_sector; } ;
struct TYPE_3__ {unsigned int flags; int crc32; int image; int sig; int orig_sig; } ;


 int ENODEV ;
 int HIBERNATE_SIG ;
 int REQ_OP_READ ;
 int REQ_OP_WRITE ;
 int REQ_SYNC ;
 unsigned int SF_CRC32_MODE ;
 int hib_submit_io (int ,int ,int ,TYPE_1__*,int *) ;
 int memcmp (char*,int ,int) ;
 int memcpy (int ,int ,int) ;
 int pr_err (char*) ;
 TYPE_1__* swsusp_header ;
 int swsusp_resume_block ;

__attribute__((used)) static int mark_swapfiles(struct swap_map_handle *handle, unsigned int flags)
{
 int error;

 hib_submit_io(REQ_OP_READ, 0, swsusp_resume_block,
        swsusp_header, ((void*)0));
 if (!memcmp("SWAP-SPACE",swsusp_header->sig, 10) ||
     !memcmp("SWAPSPACE2",swsusp_header->sig, 10)) {
  memcpy(swsusp_header->orig_sig,swsusp_header->sig, 10);
  memcpy(swsusp_header->sig, HIBERNATE_SIG, 10);
  swsusp_header->image = handle->first_sector;
  swsusp_header->flags = flags;
  if (flags & SF_CRC32_MODE)
   swsusp_header->crc32 = handle->crc32;
  error = hib_submit_io(REQ_OP_WRITE, REQ_SYNC,
          swsusp_resume_block, swsusp_header, ((void*)0));
 } else {
  pr_err("Swap header not found!\n");
  error = -ENODEV;
 }
 return error;
}
