
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_metrics_block {scalar_t__ tcpm_stamp; } ;
struct dst_entry {int dummy; } ;


 scalar_t__ TCP_METRICS_TIMEOUT ;
 int jiffies ;
 int tcpm_suck_dst (struct tcp_metrics_block*,struct dst_entry*,int) ;
 int time_after (int ,scalar_t__) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void tcpm_check_stamp(struct tcp_metrics_block *tm, struct dst_entry *dst)
{
 if (tm && unlikely(time_after(jiffies, tm->tcpm_stamp + TCP_METRICS_TIMEOUT)))
  tcpm_suck_dst(tm, dst, 0);
}
