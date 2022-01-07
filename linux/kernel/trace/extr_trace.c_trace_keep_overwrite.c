
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tracer {scalar_t__ enabled; } ;


 int TRACE_ITER_OVERWRITE ;

int trace_keep_overwrite(struct tracer *tracer, u32 mask, int set)
{
 if (tracer->enabled && (mask & TRACE_ITER_OVERWRITE) && !set)
  return -1;

 return 0;
}
