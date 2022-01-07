
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* flags; void* aux_size; void* aux_offset; } ;
union perf_event {TYPE_1__ aux; } ;


 void* bswap_64 (void*) ;
 int swap_sample_id_all (union perf_event*,TYPE_1__*) ;

__attribute__((used)) static void perf_event__aux_swap(union perf_event *event, bool sample_id_all)
{
 event->aux.aux_offset = bswap_64(event->aux.aux_offset);
 event->aux.aux_size = bswap_64(event->aux.aux_size);
 event->aux.flags = bswap_64(event->aux.flags);

 if (sample_id_all)
  swap_sample_id_all(event, &event->aux + 1);
}
