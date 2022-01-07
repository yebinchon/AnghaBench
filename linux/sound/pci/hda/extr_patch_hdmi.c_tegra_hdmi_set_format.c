
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int NVIDIA_AFG_NID ;
 int NVIDIA_GET_SCRATCH0 ;
 unsigned int NVIDIA_SCRATCH_TRIGGER ;
 unsigned int NVIDIA_SCRATCH_VALID ;
 int NVIDIA_SET_SCRATCH0_BYTE0 ;
 int NVIDIA_SET_SCRATCH0_BYTE1 ;
 int NVIDIA_SET_SCRATCH0_BYTE2 ;
 int NVIDIA_SET_SCRATCH0_BYTE3 ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,unsigned int) ;

__attribute__((used)) static void tegra_hdmi_set_format(struct hda_codec *codec, unsigned int format)
{
 unsigned int value;


 value = snd_hda_codec_read(codec, NVIDIA_AFG_NID, 0,
       NVIDIA_GET_SCRATCH0, 0);
 value = (value >> 24) & 0xff;


 snd_hda_codec_write(codec, NVIDIA_AFG_NID, 0,
       NVIDIA_SET_SCRATCH0_BYTE0,
       (format >> 0) & 0xff);
 snd_hda_codec_write(codec, NVIDIA_AFG_NID, 0,
       NVIDIA_SET_SCRATCH0_BYTE1,
       (format >> 8) & 0xff);


 snd_hda_codec_write(codec, NVIDIA_AFG_NID, 0,
       NVIDIA_SET_SCRATCH0_BYTE2, 0);





 if (format == 0)
  value &= ~NVIDIA_SCRATCH_VALID;
 else
  value |= NVIDIA_SCRATCH_VALID;






 value ^= NVIDIA_SCRATCH_TRIGGER;

 snd_hda_codec_write(codec, NVIDIA_AFG_NID, 0,
       NVIDIA_SET_SCRATCH0_BYTE3, value);
}
