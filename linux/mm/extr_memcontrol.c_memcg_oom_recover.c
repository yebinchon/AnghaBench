
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {scalar_t__ under_oom; } ;


 int TASK_NORMAL ;
 int __wake_up (int *,int ,int ,struct mem_cgroup*) ;
 int memcg_oom_waitq ;

__attribute__((used)) static void memcg_oom_recover(struct mem_cgroup *memcg)
{
 if (memcg && memcg->under_oom)
  __wake_up(&memcg_oom_waitq, TASK_NORMAL, 0, memcg);
}
