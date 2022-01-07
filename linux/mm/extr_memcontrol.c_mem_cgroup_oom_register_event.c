
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup_eventfd_list {int list; struct eventfd_ctx* eventfd; } ;
struct mem_cgroup {scalar_t__ under_oom; int oom_notify; } ;
struct eventfd_ctx {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int eventfd_signal (struct eventfd_ctx*,int) ;
 struct mem_cgroup_eventfd_list* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcg_oom_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int mem_cgroup_oom_register_event(struct mem_cgroup *memcg,
 struct eventfd_ctx *eventfd, const char *args)
{
 struct mem_cgroup_eventfd_list *event;

 event = kmalloc(sizeof(*event), GFP_KERNEL);
 if (!event)
  return -ENOMEM;

 spin_lock(&memcg_oom_lock);

 event->eventfd = eventfd;
 list_add(&event->list, &memcg->oom_notify);


 if (memcg->under_oom)
  eventfd_signal(eventfd, 1);
 spin_unlock(&memcg_oom_lock);

 return 0;
}
