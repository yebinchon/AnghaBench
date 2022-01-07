
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
union perf_event {TYPE_1__ header; } ;
typedef int u64 ;


 int BUG_ON (int) ;
 int mem_bswap_64 (void*,int) ;

__attribute__((used)) static void swap_sample_id_all(union perf_event *event, void *data)
{
 void *end = (void *) event + event->header.size;
 int size = end - data;

 BUG_ON(size % sizeof(u64));
 mem_bswap_64(data, size);
}
