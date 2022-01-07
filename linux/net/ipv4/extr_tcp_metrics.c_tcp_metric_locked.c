
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_metrics_block {int tcpm_lock; } ;
typedef enum tcp_metric_index { ____Placeholder_tcp_metric_index } tcp_metric_index ;



__attribute__((used)) static bool tcp_metric_locked(struct tcp_metrics_block *tm,
         enum tcp_metric_index idx)
{
 return tm->tcpm_lock & (1 << idx);
}
