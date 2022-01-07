
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_chmap {int dummy; } ;
struct hdac_cea_channel_speaker_allocation {scalar_t__* speakers; } ;


 int SNDRV_CTL_TLVT_CHMAP_PAIRED ;

__attribute__((used)) static int atihdmi_paired_chmap_cea_alloc_validate_get_type(
  struct hdac_chmap *chmap,
  struct hdac_cea_channel_speaker_allocation *cap,
  int channels)
{
 int c;







 int chanpairs = 0;


 if ((channels % 2) != 0)
  return -1;

 for (c = 0; c < 7; c += 2) {
  if (cap->speakers[c] || cap->speakers[c+1])
   chanpairs++;
 }

 if (chanpairs * 2 != channels)
  return -1;

 return SNDRV_CTL_TLVT_CHMAP_PAIRED;
}
