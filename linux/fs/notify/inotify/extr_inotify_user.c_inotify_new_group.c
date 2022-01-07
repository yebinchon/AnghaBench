
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inotify_event_info {int wd; scalar_t__ name_len; scalar_t__ sync_cookie; int mask; int fse; } ;
struct TYPE_3__ {int ucounts; int idr; int idr_lock; } ;
struct fsnotify_group {unsigned int max_events; TYPE_1__ inotify_data; int memcg; int * overflow_event; } ;
struct TYPE_4__ {int mm; } ;


 int EMFILE ;
 int ENOMEM ;
 struct fsnotify_group* ERR_PTR (int ) ;
 int FS_Q_OVERFLOW ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct fsnotify_group*) ;
 int UCOUNT_INOTIFY_INSTANCES ;
 TYPE_2__* current ;
 int current_euid () ;
 int current_user_ns () ;
 struct fsnotify_group* fsnotify_alloc_group (int *) ;
 int fsnotify_destroy_group (struct fsnotify_group*) ;
 int fsnotify_init_event (int *,int *) ;
 int get_mem_cgroup_from_mm (int ) ;
 int idr_init (int *) ;
 int inc_ucount (int ,int ,int ) ;
 int inotify_fsnotify_ops ;
 struct inotify_event_info* kmalloc (int,int ) ;
 int spin_lock_init (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct fsnotify_group *inotify_new_group(unsigned int max_events)
{
 struct fsnotify_group *group;
 struct inotify_event_info *oevent;

 group = fsnotify_alloc_group(&inotify_fsnotify_ops);
 if (IS_ERR(group))
  return group;

 oevent = kmalloc(sizeof(struct inotify_event_info), GFP_KERNEL);
 if (unlikely(!oevent)) {
  fsnotify_destroy_group(group);
  return ERR_PTR(-ENOMEM);
 }
 group->overflow_event = &oevent->fse;
 fsnotify_init_event(group->overflow_event, ((void*)0));
 oevent->mask = FS_Q_OVERFLOW;
 oevent->wd = -1;
 oevent->sync_cookie = 0;
 oevent->name_len = 0;

 group->max_events = max_events;
 group->memcg = get_mem_cgroup_from_mm(current->mm);

 spin_lock_init(&group->inotify_data.idr_lock);
 idr_init(&group->inotify_data.idr);
 group->inotify_data.ucounts = inc_ucount(current_user_ns(),
       current_euid(),
       UCOUNT_INOTIFY_INSTANCES);

 if (!group->inotify_data.ucounts) {
  fsnotify_destroy_group(group);
  return ERR_PTR(-EMFILE);
 }

 return group;
}
