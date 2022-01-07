
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; scalar_t__ timer; } ;
struct TYPE_2__ {int trigger_tstamp; } ;


 int snd_timer_notify (scalar_t__,int,int *) ;

__attribute__((used)) static inline void snd_pcm_timer_notify(struct snd_pcm_substream *substream,
     int event)
{





}
