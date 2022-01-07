
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {struct cs5535audio* private_data; } ;
struct cs5535audio {int dummy; } ;


 int snd_cs5535audio_codec_write (struct cs5535audio*,unsigned short,unsigned short) ;

__attribute__((used)) static void snd_cs5535audio_ac97_codec_write(struct snd_ac97 *ac97,
          unsigned short reg, unsigned short val)
{
 struct cs5535audio *cs5535au = ac97->private_data;
 snd_cs5535audio_codec_write(cs5535au, reg, val);
}
