
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct mem_cgroup* mem_cgroup; } ;
struct mem_cgroup {unsigned long move_lock_flags; int move_lock_task; int move_lock; int moving_account; } ;


 scalar_t__ atomic_read (int *) ;
 int current ;
 scalar_t__ mem_cgroup_disabled () ;
 int rcu_read_lock () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

struct mem_cgroup *lock_page_memcg(struct page *page)
{
 struct mem_cgroup *memcg;
 unsigned long flags;
 rcu_read_lock();

 if (mem_cgroup_disabled())
  return ((void*)0);
again:
 memcg = page->mem_cgroup;
 if (unlikely(!memcg))
  return ((void*)0);

 if (atomic_read(&memcg->moving_account) <= 0)
  return memcg;

 spin_lock_irqsave(&memcg->move_lock, flags);
 if (memcg != page->mem_cgroup) {
  spin_unlock_irqrestore(&memcg->move_lock, flags);
  goto again;
 }






 memcg->move_lock_task = current;
 memcg->move_lock_flags = flags;

 return memcg;
}
