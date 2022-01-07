
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int exclude_host; int exclude_guest; int size; } ;


 int perf_guest ;
 int perf_host ;

void event_attr_init(struct perf_event_attr *attr)
{
 if (!perf_host)
  attr->exclude_host = 1;
 if (!perf_guest)
  attr->exclude_guest = 1;

 attr->size = sizeof(*attr);
}
