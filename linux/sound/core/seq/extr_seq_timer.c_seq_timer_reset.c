
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fraction; scalar_t__ cur_tick; } ;
struct TYPE_3__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct snd_seq_timer {TYPE_2__ tick; TYPE_1__ cur_time; } ;



__attribute__((used)) static void seq_timer_reset(struct snd_seq_timer *tmr)
{

 tmr->cur_time.tv_sec = 0;
 tmr->cur_time.tv_nsec = 0;

 tmr->tick.cur_tick = 0;
 tmr->tick.fraction = 0;
}
