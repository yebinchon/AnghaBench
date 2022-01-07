
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {int hardware; int* image; } ;
struct snd_timer {int dummy; } ;


 size_t CS4231_PLAYBK_FORMAT ;
 int WSS_HW_CS4236B_MASK ;
 struct snd_wss* snd_timer_chip (struct snd_timer*) ;

__attribute__((used)) static unsigned long snd_wss_timer_resolution(struct snd_timer *timer)
{
 struct snd_wss *chip = snd_timer_chip(timer);
 if (chip->hardware & WSS_HW_CS4236B_MASK)
  return 14467;
 else
  return chip->image[CS4231_PLAYBK_FORMAT] & 1 ? 9969 : 9920;
}
