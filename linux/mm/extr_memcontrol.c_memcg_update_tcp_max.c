
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int tcpmem_active; int tcpmem; } ;


 int memcg_max_mutex ;
 int memcg_sockets_enabled_key ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int page_counter_set_max (int *,unsigned long) ;
 int static_branch_inc (int *) ;

__attribute__((used)) static int memcg_update_tcp_max(struct mem_cgroup *memcg, unsigned long max)
{
 int ret;

 mutex_lock(&memcg_max_mutex);

 ret = page_counter_set_max(&memcg->tcpmem, max);
 if (ret)
  goto out;

 if (!memcg->tcpmem_active) {
  static_branch_inc(&memcg_sockets_enabled_key);
  memcg->tcpmem_active = 1;
 }
out:
 mutex_unlock(&memcg_max_mutex);
 return ret;
}
