
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int kmem; } ;


 int memcg_max_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int page_counter_set_max (int *,unsigned long) ;

__attribute__((used)) static int memcg_update_kmem_max(struct mem_cgroup *memcg,
     unsigned long max)
{
 int ret;

 mutex_lock(&memcg_max_mutex);
 ret = page_counter_set_max(&memcg->kmem, max);
 mutex_unlock(&memcg_max_mutex);
 return ret;
}
