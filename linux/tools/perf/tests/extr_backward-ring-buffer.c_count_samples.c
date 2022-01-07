
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
union perf_event {TYPE_1__ header; } ;
typedef int u32 ;
struct mmap {int dummy; } ;
struct TYPE_4__ {int nr_mmaps; } ;
struct evlist {struct mmap* overwrite_mmap; TYPE_2__ core; } ;




 int TEST_FAIL ;
 int TEST_OK ;
 int perf_mmap__read_done (struct mmap*) ;
 union perf_event* perf_mmap__read_event (struct mmap*) ;
 int perf_mmap__read_init (struct mmap*) ;
 int pr_err (char*,int const) ;

__attribute__((used)) static int count_samples(struct evlist *evlist, int *sample_count,
    int *comm_count)
{
 int i;

 for (i = 0; i < evlist->core.nr_mmaps; i++) {
  struct mmap *map = &evlist->overwrite_mmap[i];
  union perf_event *event;

  perf_mmap__read_init(map);
  while ((event = perf_mmap__read_event(map)) != ((void*)0)) {
   const u32 type = event->header.type;

   switch (type) {
   case 128:
    (*sample_count)++;
    break;
   case 129:
    (*comm_count)++;
    break;
   default:
    pr_err("Unexpected record of type %d\n", type);
    return TEST_FAIL;
   }
  }
  perf_mmap__read_done(map);
 }
 return TEST_OK;
}
