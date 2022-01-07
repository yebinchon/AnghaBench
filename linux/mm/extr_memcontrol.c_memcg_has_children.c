
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int css; } ;


 int css_next_child (int *,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline bool memcg_has_children(struct mem_cgroup *memcg)
{
 bool ret;

 rcu_read_lock();
 ret = css_next_child(((void*)0), &memcg->css);
 rcu_read_unlock();
 return ret;
}
