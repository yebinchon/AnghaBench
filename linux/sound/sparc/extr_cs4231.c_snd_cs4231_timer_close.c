
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {int dummy; } ;
struct snd_cs4231 {int dummy; } ;


 int CS4231_MODE_TIMER ;
 int snd_cs4231_close (struct snd_cs4231*,int ) ;
 struct snd_cs4231* snd_timer_chip (struct snd_timer*) ;

__attribute__((used)) static int snd_cs4231_timer_close(struct snd_timer *timer)
{
 struct snd_cs4231 *chip = snd_timer_chip(timer);
 snd_cs4231_close(chip, CS4231_MODE_TIMER);
 return 0;
}
