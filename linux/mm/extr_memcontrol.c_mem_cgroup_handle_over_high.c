
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct mem_cgroup {int css; int high; int memory; } ;
struct TYPE_2__ {unsigned int memcg_nr_pages_over_high; int mm; } ;


 int GFP_KERNEL ;
 unsigned long HZ ;
 unsigned long MEMCG_CHARGE_BATCH ;
 unsigned long MEMCG_DELAY_PRECISION_SHIFT ;
 unsigned long MEMCG_DELAY_SCALING_SHIFT ;
 int MEMCG_MAX_HIGH_DELAY_JIFFIES ;
 unsigned long READ_ONCE (int ) ;
 int css_put (int *) ;
 TYPE_1__* current ;
 unsigned long div_u64 (unsigned long,unsigned long) ;
 struct mem_cgroup* get_mem_cgroup_from_mm (int ) ;
 scalar_t__ likely (int) ;
 unsigned long max (unsigned long,unsigned long) ;
 unsigned long min (unsigned long,int ) ;
 unsigned long page_counter_read (int *) ;
 int psi_memstall_enter (unsigned long*) ;
 int psi_memstall_leave (unsigned long*) ;
 int reclaim_high (struct mem_cgroup*,unsigned int,int ) ;
 int schedule_timeout_killable (unsigned long) ;

void mem_cgroup_handle_over_high(void)
{
 unsigned long usage, high, clamped_high;
 unsigned long pflags;
 unsigned long penalty_jiffies, overage;
 unsigned int nr_pages = current->memcg_nr_pages_over_high;
 struct mem_cgroup *memcg;

 if (likely(!nr_pages))
  return;

 memcg = get_mem_cgroup_from_mm(current->mm);
 reclaim_high(memcg, nr_pages, GFP_KERNEL);
 current->memcg_nr_pages_over_high = 0;
 usage = page_counter_read(&memcg->memory);
 high = READ_ONCE(memcg->high);

 if (usage <= high)
  goto out;





 clamped_high = max(high, 1UL);

 overage = div_u64((u64)(usage - high) << MEMCG_DELAY_PRECISION_SHIFT,
     clamped_high);

 penalty_jiffies = ((u64)overage * overage * HZ)
  >> (MEMCG_DELAY_PRECISION_SHIFT + MEMCG_DELAY_SCALING_SHIFT);
 penalty_jiffies = penalty_jiffies * nr_pages / MEMCG_CHARGE_BATCH;






 penalty_jiffies = min(penalty_jiffies, MEMCG_MAX_HIGH_DELAY_JIFFIES);







 if (penalty_jiffies <= HZ / 100)
  goto out;






 psi_memstall_enter(&pflags);
 schedule_timeout_killable(penalty_jiffies);
 psi_memstall_leave(&pflags);

out:
 css_put(&memcg->css);
}
