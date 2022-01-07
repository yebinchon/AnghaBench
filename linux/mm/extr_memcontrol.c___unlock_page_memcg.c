
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {unsigned long move_lock_flags; int move_lock; int * move_lock_task; } ;


 int * current ;
 int rcu_read_unlock () ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void __unlock_page_memcg(struct mem_cgroup *memcg)
{
 if (memcg && memcg->move_lock_task == current) {
  unsigned long flags = memcg->move_lock_flags;

  memcg->move_lock_task = ((void*)0);
  memcg->move_lock_flags = 0;

  spin_unlock_irqrestore(&memcg->move_lock, flags);
 }

 rcu_read_unlock();
}
