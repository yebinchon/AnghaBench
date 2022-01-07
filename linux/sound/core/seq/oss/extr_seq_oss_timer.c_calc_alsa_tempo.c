
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_timer {int tempo; int oss_tempo; int oss_timebase; int ppq; } ;



__attribute__((used)) static void
calc_alsa_tempo(struct seq_oss_timer *timer)
{
 timer->tempo = (60 * 1000000) / timer->oss_tempo;
 timer->ppq = timer->oss_timebase;
}
