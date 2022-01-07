
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int p; } ;
struct TYPE_8__ {size_t number; TYPE_1__ hdr; } ;
typedef TYPE_2__ wavefront_patch_info ;
struct TYPE_9__ {int * patch_status; } ;
typedef TYPE_3__ snd_wavefront_t ;


 size_t ARRAY_SIZE (int *) ;
 int DPRINT (int ,char*,size_t) ;
 int EINVAL ;
 int EIO ;
 int WFC_DOWNLOAD_PATCH ;
 int WF_DEBUG_LOAD_PATCH ;
 int WF_PATCH_BYTES ;
 int WF_SLOT_FILLED ;
 int munge_buf (unsigned char*,unsigned char*,int ) ;
 unsigned char* munge_int32 (size_t,unsigned char*,int) ;
 int snd_printk (char*) ;
 scalar_t__ snd_wavefront_cmd (TYPE_3__*,int ,int *,unsigned char*) ;

__attribute__((used)) static int
wavefront_send_patch (snd_wavefront_t *dev, wavefront_patch_info *header)

{
 unsigned char buf[WF_PATCH_BYTES+2];
 unsigned char *bptr;

 DPRINT (WF_DEBUG_LOAD_PATCH, "downloading patch %d\n",
          header->number);

 if (header->number >= ARRAY_SIZE(dev->patch_status))
  return -EINVAL;

 dev->patch_status[header->number] |= WF_SLOT_FILLED;

 bptr = munge_int32 (header->number, buf, 2);
 munge_buf ((unsigned char *)&header->hdr.p, bptr, WF_PATCH_BYTES);

 if (snd_wavefront_cmd (dev, WFC_DOWNLOAD_PATCH, ((void*)0), buf)) {
  snd_printk ("download patch failed\n");
  return -EIO;
 }

 return (0);
}
