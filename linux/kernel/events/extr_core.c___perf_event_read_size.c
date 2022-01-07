
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int read_format; } ;
struct perf_event {int read_size; TYPE_1__ attr; } ;


 int PERF_FORMAT_GROUP ;
 int PERF_FORMAT_ID ;
 int PERF_FORMAT_TOTAL_TIME_ENABLED ;
 int PERF_FORMAT_TOTAL_TIME_RUNNING ;

__attribute__((used)) static void __perf_event_read_size(struct perf_event *event, int nr_siblings)
{
 int entry = sizeof(u64);
 int size = 0;
 int nr = 1;

 if (event->attr.read_format & PERF_FORMAT_TOTAL_TIME_ENABLED)
  size += sizeof(u64);

 if (event->attr.read_format & PERF_FORMAT_TOTAL_TIME_RUNNING)
  size += sizeof(u64);

 if (event->attr.read_format & PERF_FORMAT_ID)
  entry += sizeof(u64);

 if (event->attr.read_format & PERF_FORMAT_GROUP) {
  nr += nr_siblings;
  size += sizeof(u64);
 }

 size += entry * nr;
 event->read_size = size;
}
