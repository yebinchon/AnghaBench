
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {int dummy; } ;
struct snd_ad1816a {int dummy; } ;


 int AD1816A_MODE_TIMER ;
 int snd_ad1816a_open (struct snd_ad1816a*,int ) ;
 struct snd_ad1816a* snd_timer_chip (struct snd_timer*) ;

__attribute__((used)) static int snd_ad1816a_timer_open(struct snd_timer *timer)
{
 struct snd_ad1816a *chip = snd_timer_chip(timer);
 snd_ad1816a_open(chip, AD1816A_MODE_TIMER);
 return 0;
}
