
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
struct cea_sad {int max_bitrate; int format; void* profile; scalar_t__ sample_bits; void* channels; int rates; } ;
 int AUDIO_CODING_TYPE_HE_AAC ;
 int AUDIO_CODING_XTYPE_FIRST_RESERVED ;
 int AUDIO_CODING_XTYPE_HE_AAC ;
 int AUDIO_CODING_XTYPE_HE_REF_CT ;
 void* GRAB_BITS (unsigned char const*,int,int,int) ;
 scalar_t__* cea_sample_sizes ;
 int * cea_sampling_frequencies ;
 int codec_info (struct hda_codec*,char*,...) ;

__attribute__((used)) static void hdmi_update_short_audio_desc(struct hda_codec *codec,
      struct cea_sad *a,
      const unsigned char *buf)
{
 int i;
 int val;

 val = GRAB_BITS(buf, 1, 0, 7);
 a->rates = 0;
 for (i = 0; i < 7; i++)
  if (val & (1 << i))
   a->rates |= cea_sampling_frequencies[i + 1];

 a->channels = GRAB_BITS(buf, 0, 0, 3);
 a->channels++;

 a->sample_bits = 0;
 a->max_bitrate = 0;

 a->format = GRAB_BITS(buf, 0, 3, 4);
 switch (a->format) {
 case 130:
  codec_info(codec, "HDMI: audio coding type 0 not expected\n");
  break;

 case 136:
  val = GRAB_BITS(buf, 2, 0, 3);
  for (i = 0; i < 3; i++)
   if (val & (1 << i))
    a->sample_bits |= cea_sample_sizes[i + 1];
  break;

 case 142:
 case 133:
 case 134:
 case 132:
 case 143:
 case 139:
 case 141:
  a->max_bitrate = GRAB_BITS(buf, 2, 0, 8);
  a->max_bitrate *= 8000;
  break;

 case 129:
  break;

 case 137:
  break;

 case 138:
  break;

 case 135:
  break;

 case 140:
  break;

 case 128:
  a->profile = GRAB_BITS(buf, 2, 0, 3);
  break;

 case 131:
  a->format = GRAB_BITS(buf, 2, 3, 5);
  if (a->format == AUDIO_CODING_XTYPE_HE_REF_CT ||
      a->format >= AUDIO_CODING_XTYPE_FIRST_RESERVED) {
   codec_info(codec,
       "HDMI: audio coding xtype %d not expected\n",
       a->format);
   a->format = 0;
  } else
   a->format += AUDIO_CODING_TYPE_HE_AAC -
         AUDIO_CODING_XTYPE_HE_AAC;
  break;
 }
}
