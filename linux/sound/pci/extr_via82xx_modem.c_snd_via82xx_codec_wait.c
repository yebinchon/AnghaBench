
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via82xx_modem {int dummy; } ;
struct snd_ac97 {int num; struct via82xx_modem* private_data; } ;


 int msleep (int) ;
 int snd_via82xx_codec_ready (struct via82xx_modem*,int ) ;

__attribute__((used)) static void snd_via82xx_codec_wait(struct snd_ac97 *ac97)
{
 struct via82xx_modem *chip = ac97->private_data;
 int err;
 err = snd_via82xx_codec_ready(chip, ac97->num);

 msleep(500);
}
