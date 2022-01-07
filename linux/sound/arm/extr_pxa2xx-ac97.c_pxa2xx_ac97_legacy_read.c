
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int num; } ;


 int pxa2xx_ac97_read (int ,unsigned short) ;

__attribute__((used)) static unsigned short pxa2xx_ac97_legacy_read(struct snd_ac97 *ac97,
           unsigned short reg)
{
 int ret;

 ret = pxa2xx_ac97_read(ac97->num, reg);
 if (ret < 0)
  return 0;
 else
  return (unsigned short)(ret & 0xffff);
}
