
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 struct mem_cgroup* idr_find (int *,unsigned short) ;
 int mem_cgroup_idr ;
 int rcu_read_lock_held () ;

struct mem_cgroup *mem_cgroup_from_id(unsigned short id)
{
 WARN_ON_ONCE(!rcu_read_lock_held());
 return idr_find(&mem_cgroup_idr, id);
}
