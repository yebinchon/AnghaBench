
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* pin_set_slot_channel ) (TYPE_2__*,int ,int,int) ;} ;
struct hdac_chmap {TYPE_2__* hdac; TYPE_1__ ops; } ;
struct hdac_cea_channel_speaker_allocation {int channels; int * speakers; } ;
typedef int hda_nid_t ;
struct TYPE_4__ {int dev; } ;


 int WARN_ON (int) ;
 struct hdac_cea_channel_speaker_allocation* channel_allocations ;
 int dev_dbg (int *,char*) ;
 int get_channel_allocation_order (int) ;
 int** hdmi_channel_mapping ;
 int stub1 (TYPE_2__*,int ,int,int) ;

__attribute__((used)) static void hdmi_std_setup_channel_mapping(struct hdac_chmap *chmap,
           hda_nid_t pin_nid,
           bool non_pcm,
           int ca)
{
 struct hdac_cea_channel_speaker_allocation *ch_alloc;
 int i;
 int err;
 int order;
 int non_pcm_mapping[8];

 order = get_channel_allocation_order(ca);
 ch_alloc = &channel_allocations[order];

 if (hdmi_channel_mapping[ca][1] == 0) {
  int hdmi_slot = 0;

  for (i = 0; i < ch_alloc->channels; i++) {
   while (!WARN_ON(hdmi_slot >= 8) &&
          !ch_alloc->speakers[7 - hdmi_slot])
    hdmi_slot++;

   hdmi_channel_mapping[ca][i] = (i << 4) | hdmi_slot++;
  }

  for (hdmi_slot = 0; hdmi_slot < 8; hdmi_slot++)
   if (!ch_alloc->speakers[7 - hdmi_slot])
    hdmi_channel_mapping[ca][i++] = (0xf << 4) | hdmi_slot;
 }

 if (non_pcm) {
  for (i = 0; i < ch_alloc->channels; i++)
   non_pcm_mapping[i] = (i << 4) | i;
  for (; i < 8; i++)
   non_pcm_mapping[i] = (0xf << 4) | i;
 }

 for (i = 0; i < 8; i++) {
  int slotsetup = non_pcm ? non_pcm_mapping[i] : hdmi_channel_mapping[ca][i];
  int hdmi_slot = slotsetup & 0x0f;
  int channel = (slotsetup & 0xf0) >> 4;

  err = chmap->ops.pin_set_slot_channel(chmap->hdac,
    pin_nid, hdmi_slot, channel);
  if (err) {
   dev_dbg(&chmap->hdac->dev, "HDMI: channel mapping failed\n");
   break;
  }
 }
}
