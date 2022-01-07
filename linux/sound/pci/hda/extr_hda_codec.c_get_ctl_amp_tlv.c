
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_kcontrol {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_AMPCAP_MIN_MUTE ;
 int AC_AMPCAP_OFFSET ;
 int AC_AMPCAP_OFFSET_SHIFT ;
 int AC_AMPCAP_STEP_SIZE ;
 int AC_AMPCAP_STEP_SIZE_SHIFT ;
 size_t SNDRV_CTL_TLVO_DB_SCALE_MIN ;
 size_t SNDRV_CTL_TLVO_DB_SCALE_MUTE_AND_STEP ;
 size_t SNDRV_CTL_TLVO_LEN ;
 size_t SNDRV_CTL_TLVO_TYPE ;
 unsigned int SNDRV_CTL_TLVT_DB_SCALE ;
 int TLV_DB_SCALE_MUTE ;
 int get_amp_direction (struct snd_kcontrol*) ;
 int get_amp_min_mute (struct snd_kcontrol*) ;
 int get_amp_nid (struct snd_kcontrol*) ;
 unsigned int get_amp_offset (struct snd_kcontrol*) ;
 int query_amp_caps (struct hda_codec*,int ,int) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static void get_ctl_amp_tlv(struct snd_kcontrol *kcontrol, unsigned int *tlv)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 hda_nid_t nid = get_amp_nid(kcontrol);
 int dir = get_amp_direction(kcontrol);
 unsigned int ofs = get_amp_offset(kcontrol);
 bool min_mute = get_amp_min_mute(kcontrol);
 u32 caps, val1, val2;

 caps = query_amp_caps(codec, nid, dir);
 val2 = (caps & AC_AMPCAP_STEP_SIZE) >> AC_AMPCAP_STEP_SIZE_SHIFT;
 val2 = (val2 + 1) * 25;
 val1 = -((caps & AC_AMPCAP_OFFSET) >> AC_AMPCAP_OFFSET_SHIFT);
 val1 += ofs;
 val1 = ((int)val1) * ((int)val2);
 if (min_mute || (caps & AC_AMPCAP_MIN_MUTE))
  val2 |= TLV_DB_SCALE_MUTE;
 tlv[SNDRV_CTL_TLVO_TYPE] = SNDRV_CTL_TLVT_DB_SCALE;
 tlv[SNDRV_CTL_TLVO_LEN] = 2 * sizeof(unsigned int);
 tlv[SNDRV_CTL_TLVO_DB_SCALE_MIN] = val1;
 tlv[SNDRV_CTL_TLVO_DB_SCALE_MUTE_AND_STEP] = val2;
}
