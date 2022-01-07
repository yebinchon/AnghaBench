
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsnotify_mark {struct fsnotify_group* group; } ;
struct fsnotify_group {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* free_mark ) (struct fsnotify_mark*) ;} ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int fsnotify_put_group (struct fsnotify_group*) ;
 int stub1 (struct fsnotify_mark*) ;

__attribute__((used)) static void fsnotify_final_mark_destroy(struct fsnotify_mark *mark)
{
 struct fsnotify_group *group = mark->group;

 if (WARN_ON_ONCE(!group))
  return;
 group->ops->free_mark(mark);
 fsnotify_put_group(group);
}
