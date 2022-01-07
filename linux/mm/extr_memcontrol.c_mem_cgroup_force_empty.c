
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int memory; } ;


 int BLK_RW_ASYNC ;
 int EINTR ;
 int GFP_KERNEL ;
 int HZ ;
 int MEM_CGROUP_RECLAIM_RETRIES ;
 int congestion_wait (int ,int) ;
 int current ;
 int drain_all_stock (struct mem_cgroup*) ;
 int lru_add_drain_all () ;
 scalar_t__ page_counter_read (int *) ;
 scalar_t__ signal_pending (int ) ;
 int try_to_free_mem_cgroup_pages (struct mem_cgroup*,int,int ,int) ;

__attribute__((used)) static int mem_cgroup_force_empty(struct mem_cgroup *memcg)
{
 int nr_retries = MEM_CGROUP_RECLAIM_RETRIES;


 lru_add_drain_all();

 drain_all_stock(memcg);


 while (nr_retries && page_counter_read(&memcg->memory)) {
  int progress;

  if (signal_pending(current))
   return -EINTR;

  progress = try_to_free_mem_cgroup_pages(memcg, 1,
       GFP_KERNEL, 1);
  if (!progress) {
   nr_retries--;

   congestion_wait(BLK_RW_ASYNC, HZ/10);
  }

 }

 return 0;
}
