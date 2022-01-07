
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_timer {int dummy; } ;


 int kfree (struct seq_oss_timer*) ;
 int snd_seq_oss_timer_stop (struct seq_oss_timer*) ;

void
snd_seq_oss_timer_delete(struct seq_oss_timer *rec)
{
 if (rec) {
  snd_seq_oss_timer_stop(rec);
  kfree(rec);
 }
}
