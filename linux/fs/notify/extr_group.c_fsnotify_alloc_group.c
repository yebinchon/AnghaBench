
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_ops {int dummy; } ;
struct fsnotify_group {struct fsnotify_ops const* ops; int marks_list; int mark_mutex; int max_events; int notification_waitq; int notification_list; int notification_lock; int user_waits; int num_marks; int refcnt; } ;


 int ENOMEM ;
 struct fsnotify_group* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int UINT_MAX ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 struct fsnotify_group* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;

struct fsnotify_group *fsnotify_alloc_group(const struct fsnotify_ops *ops)
{
 struct fsnotify_group *group;

 group = kzalloc(sizeof(struct fsnotify_group), GFP_KERNEL);
 if (!group)
  return ERR_PTR(-ENOMEM);


 refcount_set(&group->refcnt, 1);
 atomic_set(&group->num_marks, 0);
 atomic_set(&group->user_waits, 0);

 spin_lock_init(&group->notification_lock);
 INIT_LIST_HEAD(&group->notification_list);
 init_waitqueue_head(&group->notification_waitq);
 group->max_events = UINT_MAX;

 mutex_init(&group->mark_mutex);
 INIT_LIST_HEAD(&group->marks_list);

 group->ops = ops;

 return group;
}
