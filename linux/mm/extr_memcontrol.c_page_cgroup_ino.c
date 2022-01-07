
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int mem_cgroup; } ;
struct TYPE_2__ {int flags; int cgroup; } ;
struct mem_cgroup {TYPE_1__ css; } ;
typedef unsigned long ino_t ;


 int CSS_ONLINE ;
 scalar_t__ PageSlab (struct page*) ;
 int PageTail (struct page*) ;
 struct mem_cgroup* READ_ONCE (int ) ;
 unsigned long cgroup_ino (int ) ;
 struct mem_cgroup* memcg_from_slab_page (struct page*) ;
 struct mem_cgroup* parent_mem_cgroup (struct mem_cgroup*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

ino_t page_cgroup_ino(struct page *page)
{
 struct mem_cgroup *memcg;
 unsigned long ino = 0;

 rcu_read_lock();
 if (PageSlab(page) && !PageTail(page))
  memcg = memcg_from_slab_page(page);
 else
  memcg = READ_ONCE(page->mem_cgroup);
 while (memcg && !(memcg->css.flags & CSS_ONLINE))
  memcg = parent_mem_cgroup(memcg);
 if (memcg)
  ino = cgroup_ino(memcg->css.cgroup);
 rcu_read_unlock();
 return ino;
}
