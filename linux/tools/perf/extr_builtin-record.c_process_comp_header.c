
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t size; int type; } ;
struct perf_record_compressed {TYPE_1__ header; } ;


 int PERF_RECORD_COMPRESSED ;

__attribute__((used)) static size_t process_comp_header(void *record, size_t increment)
{
 struct perf_record_compressed *event = record;
 size_t size = sizeof(*event);

 if (increment) {
  event->header.size += increment;
  return increment;
 }

 event->header.type = PERF_RECORD_COMPRESSED;
 event->header.size = size;

 return size;
}
