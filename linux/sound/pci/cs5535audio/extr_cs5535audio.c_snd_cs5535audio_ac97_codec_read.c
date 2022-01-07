
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {struct cs5535audio* private_data; } ;
struct cs5535audio {int dummy; } ;


 unsigned short snd_cs5535audio_codec_read (struct cs5535audio*,unsigned short) ;

__attribute__((used)) static unsigned short snd_cs5535audio_ac97_codec_read(struct snd_ac97 *ac97,
            unsigned short reg)
{
 struct cs5535audio *cs5535au = ac97->private_data;
 return snd_cs5535audio_codec_read(cs5535au, reg);
}
