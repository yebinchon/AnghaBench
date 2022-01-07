
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {struct mem_cgroup* sk_memcg; } ;
struct mem_cgroup {int css; int tcpmem_active; } ;


 int cgroup_subsys_on_dfl (int ) ;
 int css_get (int *) ;
 scalar_t__ css_tryget_online (int *) ;
 int current ;
 struct mem_cgroup* mem_cgroup_from_task (int ) ;
 int mem_cgroup_sockets_enabled ;
 int memory_cgrp_subsys ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct mem_cgroup* root_mem_cgroup ;

void mem_cgroup_sk_alloc(struct sock *sk)
{
 struct mem_cgroup *memcg;

 if (!mem_cgroup_sockets_enabled)
  return;
 if (sk->sk_memcg) {
  css_get(&sk->sk_memcg->css);
  return;
 }

 rcu_read_lock();
 memcg = mem_cgroup_from_task(current);
 if (memcg == root_mem_cgroup)
  goto out;
 if (!cgroup_subsys_on_dfl(memory_cgrp_subsys) && !memcg->tcpmem_active)
  goto out;
 if (css_tryget_online(&memcg->css))
  sk->sk_memcg = memcg;
out:
 rcu_read_unlock();
}
