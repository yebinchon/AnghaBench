
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdif {int dummy; } ;
typedef int snd_pcm_format_t ;


 int EIO ;
 scalar_t__ SEND_SETF (struct cmdif*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ;
 scalar_t__ snd_pcm_format_big_endian (int ) ;
 scalar_t__ snd_pcm_format_unsigned (int ) ;
 int snd_pcm_format_width (int ) ;
 int snd_printdd (char*,...) ;

__attribute__((used)) static int
setsampleformat(struct cmdif *cif,
  unsigned char mixer, unsigned char id,
  unsigned char channels, snd_pcm_format_t format)
{
 unsigned char w, ch, sig, order;

 snd_printdd
     ("setsampleformat mixer: %d id: %d channels: %d format: %d\n",
      mixer, id, channels, format);
 ch = channels == 1;
 w = snd_pcm_format_width(format) == 8;
 sig = snd_pcm_format_unsigned(format) != 0;
 order = snd_pcm_format_big_endian(format) != 0;

 if (SEND_SETF(cif, mixer, w, ch, order, sig, id) &&
     SEND_SETF(cif, mixer, w, ch, order, sig, id)) {
  snd_printdd("setsampleformat failed\n");
  return -EIO;
 }
 return 0;
}
