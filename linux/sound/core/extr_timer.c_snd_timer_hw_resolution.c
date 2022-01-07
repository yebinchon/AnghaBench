
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long (* c_resolution ) (struct snd_timer*) ;unsigned long resolution; } ;
struct snd_timer {TYPE_1__ hw; } ;


 unsigned long stub1 (struct snd_timer*) ;

__attribute__((used)) static unsigned long snd_timer_hw_resolution(struct snd_timer *timer)
{
 if (timer->hw.c_resolution)
  return timer->hw.c_resolution(timer);
 else
  return timer->hw.resolution;
}
