
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memcg_stock_pcp {struct mem_cgroup* cached; int nr_pages; } ;
struct mem_cgroup {int css; int memsw; int memory; } ;


 int css_put_many (int *,int ) ;
 scalar_t__ do_memsw_account () ;
 int page_counter_uncharge (int *,int ) ;

__attribute__((used)) static void drain_stock(struct memcg_stock_pcp *stock)
{
 struct mem_cgroup *old = stock->cached;

 if (stock->nr_pages) {
  page_counter_uncharge(&old->memory, stock->nr_pages);
  if (do_memsw_account())
   page_counter_uncharge(&old->memsw, stock->nr_pages);
  css_put_many(&old->css, stock->nr_pages);
  stock->nr_pages = 0;
 }
 stock->cached = ((void*)0);
}
