
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via82xx {int dummy; } ;
struct snd_ac97 {int num; struct via82xx* private_data; } ;


 int msleep (int) ;
 int nodelay ;
 int snd_via82xx_codec_ready (struct via82xx*,int ) ;

__attribute__((used)) static void snd_via82xx_codec_wait(struct snd_ac97 *ac97)
{
 struct via82xx *chip = ac97->private_data;
 int err;
 err = snd_via82xx_codec_ready(chip, ac97->num);

 if (!nodelay)
  msleep(500);
}
