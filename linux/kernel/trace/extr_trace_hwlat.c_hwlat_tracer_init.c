
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_array {scalar_t__ max_latency; } ;
struct TYPE_2__ {scalar_t__ count; } ;


 int EBUSY ;
 int disable_migrate ;
 int hwlat_busy ;
 TYPE_1__ hwlat_data ;
 struct trace_array* hwlat_trace ;
 int hwlat_tracer_start (struct trace_array*) ;
 scalar_t__ last_tracing_thresh ;
 scalar_t__ save_tracing_thresh ;
 scalar_t__ tracer_tracing_is_on (struct trace_array*) ;
 scalar_t__ tracing_thresh ;

__attribute__((used)) static int hwlat_tracer_init(struct trace_array *tr)
{

 if (hwlat_busy)
  return -EBUSY;

 hwlat_trace = tr;

 disable_migrate = 0;
 hwlat_data.count = 0;
 tr->max_latency = 0;
 save_tracing_thresh = tracing_thresh;


 if (!tracing_thresh)
  tracing_thresh = last_tracing_thresh;

 if (tracer_tracing_is_on(tr))
  hwlat_tracer_start(tr);

 hwlat_busy = 1;

 return 0;
}
