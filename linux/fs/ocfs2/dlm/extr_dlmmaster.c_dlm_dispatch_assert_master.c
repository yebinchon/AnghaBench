
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int ignore_higher; int flags; int request_from; struct dlm_lock_resource* lockres; } ;
struct TYPE_5__ {TYPE_1__ am; } ;
struct dlm_work_item {int list; TYPE_2__ u; } ;
struct TYPE_6__ {int name; int len; } ;
struct dlm_lock_resource {TYPE_3__ lockname; } ;
struct dlm_ctxt {int dispatched_work; int dlm_worker; int work_lock; int work_list; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int dlm_assert_master_worker ;
 int dlm_init_work_item (struct dlm_ctxt*,struct dlm_work_item*,int ,int *) ;
 struct dlm_work_item* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mlog (int ,char*,int ,int ) ;
 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int dlm_dispatch_assert_master(struct dlm_ctxt *dlm,
          struct dlm_lock_resource *res,
          int ignore_higher, u8 request_from, u32 flags)
{
 struct dlm_work_item *item;
 item = kzalloc(sizeof(*item), GFP_ATOMIC);
 if (!item)
  return -ENOMEM;



 dlm_init_work_item(dlm, item, dlm_assert_master_worker, ((void*)0));
 item->u.am.lockres = res;

 item->u.am.ignore_higher = ignore_higher;
 item->u.am.request_from = request_from;
 item->u.am.flags = flags;

 if (ignore_higher)
  mlog(0, "IGNORE HIGHER: %.*s\n", res->lockname.len,
       res->lockname.name);

 spin_lock(&dlm->work_lock);
 list_add_tail(&item->list, &dlm->work_list);
 spin_unlock(&dlm->work_lock);

 queue_work(dlm->dlm_worker, &dlm->dispatched_work);
 return 0;
}
