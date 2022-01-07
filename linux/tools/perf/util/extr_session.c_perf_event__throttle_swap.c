
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* stream_id; void* id; void* time; } ;
union perf_event {TYPE_1__ throttle; } ;


 void* bswap_64 (void*) ;
 int swap_sample_id_all (union perf_event*,TYPE_1__*) ;

__attribute__((used)) static void perf_event__throttle_swap(union perf_event *event,
          bool sample_id_all)
{
 event->throttle.time = bswap_64(event->throttle.time);
 event->throttle.id = bswap_64(event->throttle.id);
 event->throttle.stream_id = bswap_64(event->throttle.stream_id);

 if (sample_id_all)
  swap_sample_id_all(event, &event->throttle + 1);
}
