
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max; } ;
struct mem_cgroup {TYPE_1__ memsw; TYPE_1__ memory; } ;


 unsigned long READ_ONCE (int ) ;
 scalar_t__ do_memsw_account () ;
 unsigned long min (unsigned long,unsigned long) ;
 unsigned long page_counter_read (TYPE_1__*) ;

__attribute__((used)) static unsigned long mem_cgroup_margin(struct mem_cgroup *memcg)
{
 unsigned long margin = 0;
 unsigned long count;
 unsigned long limit;

 count = page_counter_read(&memcg->memory);
 limit = READ_ONCE(memcg->memory.max);
 if (count < limit)
  margin = limit - count;

 if (do_memsw_account()) {
  count = page_counter_read(&memcg->memsw);
  limit = READ_ONCE(memcg->memsw.max);
  if (count <= limit)
   margin = min(margin, limit - count);
  else
   margin = 0;
 }

 return margin;
}
