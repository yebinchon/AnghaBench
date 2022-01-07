
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pglist_data {int dummy; } ;
struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;
struct lruvec {int inactive_age; } ;


 unsigned long EVICTION_MASK ;
 int LRU_ACTIVE_FILE ;
 int MAX_NR_ZONES ;
 int SetPageActive (struct page*) ;
 int SetPageWorkingset (struct page*) ;
 int WORKINGSET_ACTIVATE ;
 int WORKINGSET_REFAULT ;
 int WORKINGSET_RESTORE ;
 int atomic_long_inc (int *) ;
 unsigned long atomic_long_read (int *) ;
 int inc_lruvec_state (struct lruvec*,int ) ;
 unsigned long lruvec_lru_size (struct lruvec*,int ,int ) ;
 int mem_cgroup_disabled () ;
 struct mem_cgroup* mem_cgroup_from_id (int) ;
 struct lruvec* mem_cgroup_lruvec (struct pglist_data*,struct mem_cgroup*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int unpack_shadow (void*,int*,struct pglist_data**,unsigned long*,int*) ;

void workingset_refault(struct page *page, void *shadow)
{
 unsigned long refault_distance;
 struct pglist_data *pgdat;
 unsigned long active_file;
 struct mem_cgroup *memcg;
 unsigned long eviction;
 struct lruvec *lruvec;
 unsigned long refault;
 bool workingset;
 int memcgid;

 unpack_shadow(shadow, &memcgid, &pgdat, &eviction, &workingset);

 rcu_read_lock();
 memcg = mem_cgroup_from_id(memcgid);
 if (!mem_cgroup_disabled() && !memcg)
  goto out;
 lruvec = mem_cgroup_lruvec(pgdat, memcg);
 refault = atomic_long_read(&lruvec->inactive_age);
 active_file = lruvec_lru_size(lruvec, LRU_ACTIVE_FILE, MAX_NR_ZONES);
 refault_distance = (refault - eviction) & EVICTION_MASK;

 inc_lruvec_state(lruvec, WORKINGSET_REFAULT);






 if (refault_distance > active_file)
  goto out;

 SetPageActive(page);
 atomic_long_inc(&lruvec->inactive_age);
 inc_lruvec_state(lruvec, WORKINGSET_ACTIVATE);


 if (workingset) {
  SetPageWorkingset(page);
  inc_lruvec_state(lruvec, WORKINGSET_RESTORE);
 }
out:
 rcu_read_unlock();
}
