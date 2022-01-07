
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsnotify_group {int memcg; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* free_group_priv ) (struct fsnotify_group*) ;} ;


 int kfree (struct fsnotify_group*) ;
 int mem_cgroup_put (int ) ;
 int stub1 (struct fsnotify_group*) ;

__attribute__((used)) static void fsnotify_final_destroy_group(struct fsnotify_group *group)
{
 if (group->ops->free_group_priv)
  group->ops->free_group_priv(group);

 mem_cgroup_put(group->memcg);

 kfree(group);
}
