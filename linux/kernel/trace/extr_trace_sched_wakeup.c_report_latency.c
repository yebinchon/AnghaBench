
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct trace_array {scalar_t__ max_latency; } ;


 scalar_t__ tracing_thresh ;

__attribute__((used)) static bool report_latency(struct trace_array *tr, u64 delta)
{
 if (tracing_thresh) {
  if (delta < tracing_thresh)
   return 0;
 } else {
  if (delta <= tr->max_latency)
   return 0;
 }
 return 1;
}
