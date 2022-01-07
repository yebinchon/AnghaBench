
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_mark {int connector; struct fsnotify_group* group; int refcnt; int lock; } ;
struct fsnotify_group {int dummy; } ;


 int WRITE_ONCE (int ,int *) ;
 int fsnotify_get_group (struct fsnotify_group*) ;
 int memset (struct fsnotify_mark*,int ,int) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;

void fsnotify_init_mark(struct fsnotify_mark *mark,
   struct fsnotify_group *group)
{
 memset(mark, 0, sizeof(*mark));
 spin_lock_init(&mark->lock);
 refcount_set(&mark->refcnt, 1);
 fsnotify_get_group(group);
 mark->group = group;
 WRITE_ONCE(mark->connector, ((void*)0));
}
