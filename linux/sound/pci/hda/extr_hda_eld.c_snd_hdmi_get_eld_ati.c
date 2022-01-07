
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int ATI_AUDIODESC_CHANNELS ;
 int ATI_AUDIODESC_LPCM_STEREO_RATES ;
 int ATI_AUDIODESC_RATES ;
 int ATI_DELAY_AUDIO_LATENCY ;
 int ATI_DELAY_VIDEO_LATENCY ;
 int ATI_INFO_IDX_MANUFACTURER_ID ;
 int ATI_INFO_IDX_PORT_ID_HIGH ;
 int ATI_INFO_IDX_PORT_ID_LOW ;
 int ATI_INFO_IDX_PRODUCT_ID ;
 int ATI_INFO_IDX_SINK_DESC_FIRST ;
 int ATI_INFO_IDX_SINK_DESC_LEN ;
 int ATI_SPKALLOC_SPKALLOC ;
 int ATI_SPKALLOC_TYPE_DISPLAYPORT ;
 int ATI_VERB_GET_AUDIO_DESCRIPTOR ;
 int ATI_VERB_GET_AUDIO_VIDEO_DELAY ;
 int ATI_VERB_GET_SINK_INFO_DATA ;
 int ATI_VERB_GET_SPEAKER_ALLOCATION ;
 int ATI_VERB_SET_AUDIO_DESCRIPTOR ;
 int ATI_VERB_SET_SINK_INFO_INDEX ;
 int AUDIO_CODING_TYPE_DST ;
 int AUDIO_CODING_TYPE_LPCM ;
 int AUDIO_CODING_TYPE_SACD ;
 int AUDIO_CODING_TYPE_WMAPRO ;
 int EINVAL ;
 int ELD_FIXED_BYTES ;
 int ELD_MAX_MNL ;
 int ELD_MAX_SAD ;
 int ELD_VER_CEA_861D ;
 int codec_info (struct hda_codec*,char*,...) ;
 int memset (unsigned char*,int ,int) ;
 int put_unaligned_le16 (int,unsigned char*) ;
 int put_unaligned_le32 (int,unsigned char*) ;
 int round_up (int,int) ;
 void* snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;

int snd_hdmi_get_eld_ati(struct hda_codec *codec, hda_nid_t nid,
    unsigned char *buf, int *eld_size, bool rev3_or_later)
{
 int spkalloc, ati_sad, aud_synch;
 int sink_desc_len = 0;
 int pos, i;



 spkalloc = snd_hda_codec_read(codec, nid, 0, ATI_VERB_GET_SPEAKER_ALLOCATION, 0);

 if (spkalloc <= 0) {
  codec_info(codec, "HDMI ATI/AMD: no speaker allocation for ELD\n");
  return -EINVAL;
 }

 memset(buf, 0, ELD_FIXED_BYTES + ELD_MAX_MNL + ELD_MAX_SAD * 3);


 buf[0] = ELD_VER_CEA_861D << 3;


 buf[7] = spkalloc & ATI_SPKALLOC_SPKALLOC;


 if (spkalloc & ATI_SPKALLOC_TYPE_DISPLAYPORT)
  buf[5] |= 0x04;

 pos = ELD_FIXED_BYTES;

 if (rev3_or_later) {
  int sink_info;

  snd_hda_codec_write(codec, nid, 0, ATI_VERB_SET_SINK_INFO_INDEX, ATI_INFO_IDX_PORT_ID_LOW);
  sink_info = snd_hda_codec_read(codec, nid, 0, ATI_VERB_GET_SINK_INFO_DATA, 0);
  put_unaligned_le32(sink_info, buf + 8);

  snd_hda_codec_write(codec, nid, 0, ATI_VERB_SET_SINK_INFO_INDEX, ATI_INFO_IDX_PORT_ID_HIGH);
  sink_info = snd_hda_codec_read(codec, nid, 0, ATI_VERB_GET_SINK_INFO_DATA, 0);
  put_unaligned_le32(sink_info, buf + 12);

  snd_hda_codec_write(codec, nid, 0, ATI_VERB_SET_SINK_INFO_INDEX, ATI_INFO_IDX_MANUFACTURER_ID);
  sink_info = snd_hda_codec_read(codec, nid, 0, ATI_VERB_GET_SINK_INFO_DATA, 0);
  put_unaligned_le16(sink_info, buf + 16);

  snd_hda_codec_write(codec, nid, 0, ATI_VERB_SET_SINK_INFO_INDEX, ATI_INFO_IDX_PRODUCT_ID);
  sink_info = snd_hda_codec_read(codec, nid, 0, ATI_VERB_GET_SINK_INFO_DATA, 0);
  put_unaligned_le16(sink_info, buf + 18);

  snd_hda_codec_write(codec, nid, 0, ATI_VERB_SET_SINK_INFO_INDEX, ATI_INFO_IDX_SINK_DESC_LEN);
  sink_desc_len = snd_hda_codec_read(codec, nid, 0, ATI_VERB_GET_SINK_INFO_DATA, 0);

  if (sink_desc_len > ELD_MAX_MNL) {
   codec_info(codec, "HDMI ATI/AMD: Truncating HDMI sink description with length %d\n",
       sink_desc_len);
   sink_desc_len = ELD_MAX_MNL;
  }

  buf[4] |= sink_desc_len;

  for (i = 0; i < sink_desc_len; i++) {
   snd_hda_codec_write(codec, nid, 0, ATI_VERB_SET_SINK_INFO_INDEX, ATI_INFO_IDX_SINK_DESC_FIRST + i);
   buf[pos++] = snd_hda_codec_read(codec, nid, 0, ATI_VERB_GET_SINK_INFO_DATA, 0);
  }
 }

 for (i = AUDIO_CODING_TYPE_LPCM; i <= AUDIO_CODING_TYPE_WMAPRO; i++) {
  if (i == AUDIO_CODING_TYPE_SACD || i == AUDIO_CODING_TYPE_DST)
   continue;

  snd_hda_codec_write(codec, nid, 0, ATI_VERB_SET_AUDIO_DESCRIPTOR, i << 3);
  ati_sad = snd_hda_codec_read(codec, nid, 0, ATI_VERB_GET_AUDIO_DESCRIPTOR, 0);

  if (ati_sad <= 0)
   continue;

  if (ati_sad & ATI_AUDIODESC_RATES) {

   buf[pos++] = (ati_sad & 0x0000ff) >> 0;
   buf[pos++] = (ati_sad & 0x00ff00) >> 8;
   buf[pos++] = (ati_sad & 0xff0000) >> 16;
  }

  if (i == AUDIO_CODING_TYPE_LPCM
      && (ati_sad & ATI_AUDIODESC_LPCM_STEREO_RATES)
      && (ati_sad & ATI_AUDIODESC_LPCM_STEREO_RATES) >> 16 != (ati_sad & ATI_AUDIODESC_RATES)) {

   buf[pos++] = ((ati_sad & 0x000000ff) & ~ATI_AUDIODESC_CHANNELS) | 0x1;

   buf[pos++] = (ati_sad & 0xff000000) >> 24;
   buf[pos++] = (ati_sad & 0x00ff0000) >> 16;
  }
 }

 if (pos == ELD_FIXED_BYTES + sink_desc_len) {
  codec_info(codec, "HDMI ATI/AMD: no audio descriptors for ELD\n");
  return -EINVAL;
 }
 aud_synch = snd_hda_codec_read(codec, nid, 0, ATI_VERB_GET_AUDIO_VIDEO_DELAY, 0);
 if ((aud_synch & ATI_DELAY_VIDEO_LATENCY) && (aud_synch & ATI_DELAY_AUDIO_LATENCY)) {
  int video_latency_hdmi = (aud_synch & ATI_DELAY_VIDEO_LATENCY);
  int audio_latency_hdmi = (aud_synch & ATI_DELAY_AUDIO_LATENCY) >> 8;

  if (video_latency_hdmi <= 0xfb && audio_latency_hdmi <= 0xfb &&
      video_latency_hdmi > audio_latency_hdmi)
   buf[6] = video_latency_hdmi - audio_latency_hdmi;

 }


 buf[5] |= ((pos - ELD_FIXED_BYTES - sink_desc_len) / 3) << 4;


 pos = round_up(pos, 4);


 buf[2] = (pos - 4) / 4;

 *eld_size = pos;

 return 0;
}
