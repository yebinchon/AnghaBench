
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* layer; } ;
struct TYPE_11__ {TYPE_2__ pr; } ;
struct TYPE_12__ {size_t number; TYPE_3__ hdr; } ;
typedef TYPE_4__ wavefront_patch_info ;
struct TYPE_13__ {int * patch_status; int * prog_status; } ;
typedef TYPE_5__ snd_wavefront_t ;
struct TYPE_9__ {size_t patch_number; scalar_t__ mute; } ;


 size_t ARRAY_SIZE (int *) ;
 int DPRINT (int ,char*,size_t) ;
 int EINVAL ;
 int EIO ;
 int WFC_DOWNLOAD_PROGRAM ;
 int WF_DEBUG_LOAD_PATCH ;
 int WF_NUM_LAYERS ;
 int WF_PROGRAM_BYTES ;
 int WF_SLOT_USED ;
 int munge_buf (unsigned char*,unsigned char*,int ) ;
 int snd_printk (char*) ;
 scalar_t__ snd_wavefront_cmd (TYPE_5__*,int ,int *,unsigned char*) ;

__attribute__((used)) static int
wavefront_send_program (snd_wavefront_t *dev, wavefront_patch_info *header)

{
 unsigned char buf[WF_PROGRAM_BYTES+1];
 int i;

 DPRINT (WF_DEBUG_LOAD_PATCH, "downloading program %d\n",
  header->number);

 if (header->number >= ARRAY_SIZE(dev->prog_status))
  return -EINVAL;

 dev->prog_status[header->number] = WF_SLOT_USED;





 for (i = 0; i < WF_NUM_LAYERS; i++) {
  if (header->hdr.pr.layer[i].mute) {
   dev->patch_status[header->hdr.pr.layer[i].patch_number] |=
    WF_SLOT_USED;




  }
 }

 buf[0] = header->number;
 munge_buf ((unsigned char *)&header->hdr.pr, &buf[1], WF_PROGRAM_BYTES);

 if (snd_wavefront_cmd (dev, WFC_DOWNLOAD_PROGRAM, ((void*)0), buf)) {
  snd_printk ("download patch failed\n");
  return -EIO;
 }

 return (0);
}
