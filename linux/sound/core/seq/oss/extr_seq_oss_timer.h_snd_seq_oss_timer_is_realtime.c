
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_timer {int realtime; } ;



__attribute__((used)) static inline int
snd_seq_oss_timer_is_realtime(struct seq_oss_timer *timer)
{
 return timer->realtime;
}
