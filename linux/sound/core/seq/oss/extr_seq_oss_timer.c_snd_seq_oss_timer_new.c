
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_timer {int oss_tempo; int oss_timebase; scalar_t__ running; scalar_t__ realtime; scalar_t__ cur_tick; struct seq_oss_devinfo* dp; } ;
struct seq_oss_devinfo {int dummy; } ;


 int GFP_KERNEL ;
 int calc_alsa_tempo (struct seq_oss_timer*) ;
 struct seq_oss_timer* kzalloc (int,int ) ;

struct seq_oss_timer *
snd_seq_oss_timer_new(struct seq_oss_devinfo *dp)
{
 struct seq_oss_timer *rec;

 rec = kzalloc(sizeof(*rec), GFP_KERNEL);
 if (rec == ((void*)0))
  return ((void*)0);

 rec->dp = dp;
 rec->cur_tick = 0;
 rec->realtime = 0;
 rec->running = 0;
 rec->oss_tempo = 60;
 rec->oss_timebase = 100;
 calc_alsa_tempo(rec);

 return rec;
}
