
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memcg_stock_pcp {unsigned int nr_pages; struct mem_cgroup* cached; } ;
struct mem_cgroup {int dummy; } ;


 unsigned int MEMCG_CHARGE_BATCH ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int memcg_stock ;
 struct memcg_stock_pcp* this_cpu_ptr (int *) ;

__attribute__((used)) static bool consume_stock(struct mem_cgroup *memcg, unsigned int nr_pages)
{
 struct memcg_stock_pcp *stock;
 unsigned long flags;
 bool ret = 0;

 if (nr_pages > MEMCG_CHARGE_BATCH)
  return ret;

 local_irq_save(flags);

 stock = this_cpu_ptr(&memcg_stock);
 if (memcg == stock->cached && stock->nr_pages >= nr_pages) {
  stock->nr_pages -= nr_pages;
  ret = 1;
 }

 local_irq_restore(flags);

 return ret;
}
