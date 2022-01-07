
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {unsigned int OriginalSample; unsigned int FrequencyBias; int sampleEndOffset; int loopEndOffset; int loopStartOffset; int sampleStartOffset; } ;
struct TYPE_9__ {TYPE_1__ a; } ;
struct TYPE_10__ {unsigned int number; TYPE_2__ hdr; } ;
typedef TYPE_3__ wavefront_patch_info ;
struct TYPE_11__ {int* sample_status; } ;
typedef TYPE_4__ snd_wavefront_t ;


 int DPRINT (int ,char*,unsigned int,unsigned int) ;
 int EIO ;
 int WFC_DOWNLOAD_SAMPLE_ALIAS ;
 int WF_ALIAS_BYTES ;
 int WF_DEBUG_LOAD_PATCH ;
 int WF_SLOT_FILLED ;
 int WF_ST_ALIAS ;
 int munge_int32 (unsigned int,unsigned char*,int) ;
 int snd_printk (char*) ;
 scalar_t__ snd_wavefront_cmd (TYPE_4__*,int ,int *,unsigned char*) ;

__attribute__((used)) static int
wavefront_send_alias (snd_wavefront_t *dev, wavefront_patch_info *header)

{
 unsigned char alias_hdr[WF_ALIAS_BYTES];

 DPRINT (WF_DEBUG_LOAD_PATCH, "download alias, %d is "
          "alias for %d\n",
          header->number,
          header->hdr.a.OriginalSample);

 munge_int32 (header->number, &alias_hdr[0], 2);
 munge_int32 (header->hdr.a.OriginalSample, &alias_hdr[2], 2);
 munge_int32 (*((unsigned int *)&header->hdr.a.sampleStartOffset),
       &alias_hdr[4], 4);
 munge_int32 (*((unsigned int *)&header->hdr.a.loopStartOffset),
       &alias_hdr[8], 4);
 munge_int32 (*((unsigned int *)&header->hdr.a.loopEndOffset),
       &alias_hdr[12], 4);
 munge_int32 (*((unsigned int *)&header->hdr.a.sampleEndOffset),
       &alias_hdr[16], 4);
 munge_int32 (header->hdr.a.FrequencyBias, &alias_hdr[20], 3);
 munge_int32 (*(&header->hdr.a.FrequencyBias+1), &alias_hdr[23], 2);

 if (snd_wavefront_cmd (dev, WFC_DOWNLOAD_SAMPLE_ALIAS, ((void*)0), alias_hdr)) {
  snd_printk ("download alias failed.\n");
  return -EIO;
 }

 dev->sample_status[header->number] = (WF_SLOT_FILLED|WF_ST_ALIAS);

 return (0);
}
