
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; } ;
union perf_event {TYPE_1__ header; } ;
typedef size_t u64 ;
struct TYPE_4__ {unsigned char* base; size_t mask; void* event_copy; } ;
struct mmap {TYPE_2__ core; } ;


 int memcpy (void*,unsigned char*,unsigned int) ;
 unsigned int min (int,unsigned int) ;
 int page_size ;

__attribute__((used)) static union perf_event *perf_mmap__read(struct mmap *map,
      u64 *startp, u64 end)
{
 unsigned char *data = map->core.base + page_size;
 union perf_event *event = ((void*)0);
 int diff = end - *startp;

 if (diff >= (int)sizeof(event->header)) {
  size_t size;

  event = (union perf_event *)&data[*startp & map->core.mask];
  size = event->header.size;

  if (size < sizeof(event->header) || diff < (int)size)
   return ((void*)0);





  if ((*startp & map->core.mask) + size != ((*startp + size) & map->core.mask)) {
   unsigned int offset = *startp;
   unsigned int len = min(sizeof(*event), size), cpy;
   void *dst = map->core.event_copy;

   do {
    cpy = min(map->core.mask + 1 - (offset & map->core.mask), len);
    memcpy(dst, &data[offset & map->core.mask], cpy);
    offset += cpy;
    dst += cpy;
    len -= cpy;
   } while (len);

   event = (union perf_event *)map->core.event_copy;
  }

  *startp += size;
 }

 return event;
}
