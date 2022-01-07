
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int list_empty (struct list_head*) ;
 scalar_t__ mem_cgroup_disabled () ;
 int uncharge_list (struct list_head*) ;

void mem_cgroup_uncharge_list(struct list_head *page_list)
{
 if (mem_cgroup_disabled())
  return;

 if (!list_empty(page_list))
  uncharge_list(page_list);
}
