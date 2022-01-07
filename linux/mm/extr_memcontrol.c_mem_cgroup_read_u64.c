
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct page_counter {int failcnt; int watermark; int max; } ;
struct mem_cgroup {int soft_limit; struct page_counter memsw; struct page_counter memory; struct page_counter tcpmem; struct page_counter kmem; } ;
struct cgroup_subsys_state {int dummy; } ;
struct cftype {int private; } ;


 int BUG () ;
 int MEMFILE_ATTR (int ) ;
 int MEMFILE_TYPE (int ) ;
 int PAGE_SIZE ;
 struct mem_cgroup* mem_cgroup_from_css (struct cgroup_subsys_state*) ;
 int mem_cgroup_usage (struct mem_cgroup*,int) ;
 int page_counter_read (struct page_counter*) ;

__attribute__((used)) static u64 mem_cgroup_read_u64(struct cgroup_subsys_state *css,
          struct cftype *cft)
{
 struct mem_cgroup *memcg = mem_cgroup_from_css(css);
 struct page_counter *counter;

 switch (MEMFILE_TYPE(cft->private)) {
 case 130:
  counter = &memcg->memory;
  break;
 case 129:
  counter = &memcg->memsw;
  break;
 case 131:
  counter = &memcg->kmem;
  break;
 case 128:
  counter = &memcg->tcpmem;
  break;
 default:
  BUG();
 }

 switch (MEMFILE_ATTR(cft->private)) {
 case 132:
  if (counter == &memcg->memory)
   return (u64)mem_cgroup_usage(memcg, 0) * PAGE_SIZE;
  if (counter == &memcg->memsw)
   return (u64)mem_cgroup_usage(memcg, 1) * PAGE_SIZE;
  return (u64)page_counter_read(counter) * PAGE_SIZE;
 case 135:
  return (u64)counter->max * PAGE_SIZE;
 case 134:
  return (u64)counter->watermark * PAGE_SIZE;
 case 136:
  return counter->failcnt;
 case 133:
  return (u64)memcg->soft_limit * PAGE_SIZE;
 default:
  BUG();
 }
}
