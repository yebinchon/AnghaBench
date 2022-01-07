
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;


 int __event (int,void*,struct perf_event_attr*) ;

__attribute__((used)) static int bp_event(void *addr, struct perf_event_attr *attr)
{
 return __event(1, addr, attr);
}
