
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;
struct lruvec {int inactive_age; } ;


 int atomic_long_inc (int *) ;
 int mem_cgroup_disabled () ;
 struct lruvec* mem_cgroup_lruvec (int ,struct mem_cgroup*) ;
 struct mem_cgroup* page_memcg_rcu (struct page*) ;
 int page_pgdat (struct page*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void workingset_activation(struct page *page)
{
 struct mem_cgroup *memcg;
 struct lruvec *lruvec;

 rcu_read_lock();







 memcg = page_memcg_rcu(page);
 if (!mem_cgroup_disabled() && !memcg)
  goto out;
 lruvec = mem_cgroup_lruvec(page_pgdat(page), memcg);
 atomic_long_inc(&lruvec->inactive_age);
out:
 rcu_read_unlock();
}
