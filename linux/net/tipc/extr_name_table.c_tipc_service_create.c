
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_service {int service_list; int subscriptions; int ranges; int type; int lock; } ;
struct hlist_head {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;
 int hlist_add_head_rcu (int *,struct hlist_head*) ;
 struct tipc_service* kzalloc (int,int ) ;
 int pr_warn (char*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct tipc_service *tipc_service_create(u32 type, struct hlist_head *hd)
{
 struct tipc_service *service = kzalloc(sizeof(*service), GFP_ATOMIC);

 if (!service) {
  pr_warn("Service creation failed, no memory\n");
  return ((void*)0);
 }

 spin_lock_init(&service->lock);
 service->type = type;
 service->ranges = RB_ROOT;
 INIT_HLIST_NODE(&service->service_list);
 INIT_LIST_HEAD(&service->subscriptions);
 hlist_add_head_rcu(&service->service_list, hd);
 return service;
}
