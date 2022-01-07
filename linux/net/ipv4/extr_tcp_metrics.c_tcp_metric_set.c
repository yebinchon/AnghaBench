
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_metrics_block {int * tcpm_vals; } ;
typedef enum tcp_metric_index { ____Placeholder_tcp_metric_index } tcp_metric_index ;



__attribute__((used)) static void tcp_metric_set(struct tcp_metrics_block *tm,
      enum tcp_metric_index idx,
      u32 val)
{
 tm->tcpm_vals[idx] = val;
}
