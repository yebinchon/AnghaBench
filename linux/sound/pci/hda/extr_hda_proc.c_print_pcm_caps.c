
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_PAR_PCM ;
 int AC_PAR_STREAM ;
 unsigned int param_read (struct hda_codec*,int ,int ) ;
 int print_pcm_bits (struct snd_info_buffer*,unsigned int) ;
 int print_pcm_formats (struct snd_info_buffer*,unsigned int) ;
 int print_pcm_rates (struct snd_info_buffer*,unsigned int) ;
 int snd_iprintf (struct snd_info_buffer*,char*) ;

__attribute__((used)) static void print_pcm_caps(struct snd_info_buffer *buffer,
      struct hda_codec *codec, hda_nid_t nid)
{
 unsigned int pcm = param_read(codec, nid, AC_PAR_PCM);
 unsigned int stream = param_read(codec, nid, AC_PAR_STREAM);
 if (pcm == -1 || stream == -1) {
  snd_iprintf(buffer, "N/A\n");
  return;
 }
 print_pcm_rates(buffer, pcm);
 print_pcm_bits(buffer, pcm);
 print_pcm_formats(buffer, stream);
}
