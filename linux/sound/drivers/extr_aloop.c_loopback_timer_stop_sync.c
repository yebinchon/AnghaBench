
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loopback_pcm {int timer; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static inline void loopback_timer_stop_sync(struct loopback_pcm *dpcm)
{
 del_timer_sync(&dpcm->timer);
}
