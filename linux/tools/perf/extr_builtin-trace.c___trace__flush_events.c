
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ last; int data; } ;
struct trace {TYPE_1__ oe; } ;


 scalar_t__ NSEC_PER_SEC ;
 scalar_t__ ordered_events__first_time (int *) ;
 int ordered_events__flush_time (int *,scalar_t__) ;

__attribute__((used)) static int __trace__flush_events(struct trace *trace)
{
 u64 first = ordered_events__first_time(&trace->oe.data);
 u64 flush = trace->oe.last - NSEC_PER_SEC;


 if (first && first < flush)
  return ordered_events__flush_time(&trace->oe.data, flush);

 return 0;
}
