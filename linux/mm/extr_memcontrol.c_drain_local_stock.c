
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct memcg_stock_pcp {int flags; } ;


 int FLUSHING_CACHED_CHARGE ;
 int clear_bit (int ,int *) ;
 int drain_stock (struct memcg_stock_pcp*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int memcg_stock ;
 struct memcg_stock_pcp* this_cpu_ptr (int *) ;

__attribute__((used)) static void drain_local_stock(struct work_struct *dummy)
{
 struct memcg_stock_pcp *stock;
 unsigned long flags;





 local_irq_save(flags);

 stock = this_cpu_ptr(&memcg_stock);
 drain_stock(stock);
 clear_bit(FLUSHING_CACHED_CHARGE, &stock->flags);

 local_irq_restore(flags);
}
