
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; scalar_t__ type; } ;
struct TYPE_3__ {int * array; } ;
union perf_event {TYPE_2__ header; TYPE_1__ sample; } ;
typedef int u64 ;
struct evlist {size_t id_pos; size_t is_pos; } ;
typedef size_t ssize_t ;
typedef int __u64 ;


 scalar_t__ PERF_RECORD_SAMPLE ;

__attribute__((used)) static int perf_evlist__event2id(struct evlist *evlist,
     union perf_event *event, u64 *id)
{
 const __u64 *array = event->sample.array;
 ssize_t n;

 n = (event->header.size - sizeof(event->header)) >> 3;

 if (event->header.type == PERF_RECORD_SAMPLE) {
  if (evlist->id_pos >= n)
   return -1;
  *id = array[evlist->id_pos];
 } else {
  if (evlist->is_pos > n)
   return -1;
  n -= evlist->is_pos;
  *id = array[n];
 }
 return 0;
}
