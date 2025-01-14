
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_AMPCAP_NUM_STEPS ;
 int AC_AMPCAP_NUM_STEPS_SHIFT ;
 int AC_AMPCAP_STEP_SIZE ;
 int AC_AMPCAP_STEP_SIZE_SHIFT ;
 size_t SNDRV_CTL_TLVO_DB_SCALE_MIN ;
 size_t SNDRV_CTL_TLVO_DB_SCALE_MUTE_AND_STEP ;
 size_t SNDRV_CTL_TLVO_LEN ;
 size_t SNDRV_CTL_TLVO_TYPE ;
 unsigned int SNDRV_CTL_TLVT_DB_SCALE ;
 int query_amp_caps (struct hda_codec*,int ,int) ;

void snd_hda_set_vmaster_tlv(struct hda_codec *codec, hda_nid_t nid, int dir,
        unsigned int *tlv)
{
 u32 caps;
 int nums, step;

 caps = query_amp_caps(codec, nid, dir);
 nums = (caps & AC_AMPCAP_NUM_STEPS) >> AC_AMPCAP_NUM_STEPS_SHIFT;
 step = (caps & AC_AMPCAP_STEP_SIZE) >> AC_AMPCAP_STEP_SIZE_SHIFT;
 step = (step + 1) * 25;
 tlv[SNDRV_CTL_TLVO_TYPE] = SNDRV_CTL_TLVT_DB_SCALE;
 tlv[SNDRV_CTL_TLVO_LEN] = 2 * sizeof(unsigned int);
 tlv[SNDRV_CTL_TLVO_DB_SCALE_MIN] = -nums * step;
 tlv[SNDRV_CTL_TLVO_DB_SCALE_MUTE_AND_STEP] = step;
}
