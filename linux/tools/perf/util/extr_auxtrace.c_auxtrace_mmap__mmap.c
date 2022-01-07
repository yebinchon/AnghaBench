
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_mmap_page {scalar_t__ aux_size; int aux_offset; } ;
struct auxtrace_mmap_params {int offset; int prot; scalar_t__ len; int cpu; int tid; int idx; int mask; } ;
struct auxtrace_mmap {int * base; int cpu; int tid; int idx; scalar_t__ prev; scalar_t__ len; int mask; void* userpg; } ;


 int * MAP_FAILED ;
 int MAP_SHARED ;
 int WARN_ONCE (int *,char*) ;
 int * mmap (int *,scalar_t__,int ,int ,int,int ) ;
 int pr_debug2 (char*) ;
 int pr_err (char*) ;

int auxtrace_mmap__mmap(struct auxtrace_mmap *mm,
   struct auxtrace_mmap_params *mp,
   void *userpg, int fd)
{
 struct perf_event_mmap_page *pc = userpg;

 WARN_ONCE(mm->base, "Uninitialized auxtrace_mmap\n");

 mm->userpg = userpg;
 mm->mask = mp->mask;
 mm->len = mp->len;
 mm->prev = 0;
 mm->idx = mp->idx;
 mm->tid = mp->tid;
 mm->cpu = mp->cpu;

 if (!mp->len) {
  mm->base = ((void*)0);
  return 0;
 }


 pr_err("Cannot use AUX area tracing mmaps\n");
 return -1;


 pc->aux_offset = mp->offset;
 pc->aux_size = mp->len;

 mm->base = mmap(((void*)0), mp->len, mp->prot, MAP_SHARED, fd, mp->offset);
 if (mm->base == MAP_FAILED) {
  pr_debug2("failed to mmap AUX area\n");
  mm->base = ((void*)0);
  return -1;
 }

 return 0;
}
