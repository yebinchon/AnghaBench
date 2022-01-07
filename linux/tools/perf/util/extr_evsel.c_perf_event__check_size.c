
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int size; } ;
union perf_event {TYPE_1__ header; } ;


 int EFAULT ;

__attribute__((used)) static int
perf_event__check_size(union perf_event *event, unsigned int sample_size)
{





 if (sample_size + sizeof(event->header) > event->header.size)
  return -EFAULT;

 return 0;
}
