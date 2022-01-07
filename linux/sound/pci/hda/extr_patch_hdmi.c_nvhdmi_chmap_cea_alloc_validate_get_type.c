
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_chmap {int dummy; } ;
struct hdac_cea_channel_speaker_allocation {int ca_index; int channels; } ;


 int SNDRV_CTL_TLVT_CHMAP_FIXED ;
 int SNDRV_CTL_TLVT_CHMAP_VAR ;

__attribute__((used)) static int nvhdmi_chmap_cea_alloc_validate_get_type(struct hdac_chmap *chmap,
  struct hdac_cea_channel_speaker_allocation *cap, int channels)
{
 if (cap->ca_index == 0x00 && channels == 2)
  return SNDRV_CTL_TLVT_CHMAP_FIXED;


 if (cap->channels != channels)
  return -1;


 return SNDRV_CTL_TLVT_CHMAP_VAR;
}
