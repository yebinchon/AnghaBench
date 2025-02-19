
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_metrics_block {int dummy; } ;


 int TCP_METRICS_RECLAIM_DEPTH ;
 struct tcp_metrics_block* TCP_METRICS_RECLAIM_PTR ;

__attribute__((used)) static struct tcp_metrics_block *tcp_get_encode(struct tcp_metrics_block *tm, int depth)
{
 if (tm)
  return tm;
 if (depth > TCP_METRICS_RECLAIM_DEPTH)
  return TCP_METRICS_RECLAIM_PTR;
 return ((void*)0);
}
