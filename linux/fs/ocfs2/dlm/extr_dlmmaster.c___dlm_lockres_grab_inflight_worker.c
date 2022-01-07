
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int len; } ;
struct dlm_lock_resource {int inflight_assert_workers; TYPE_1__ lockname; int spinlock; } ;
struct dlm_ctxt {int name; } ;


 int assert_spin_locked (int *) ;
 int mlog (int ,char*,int ,int ,int ,int ) ;

void __dlm_lockres_grab_inflight_worker(struct dlm_ctxt *dlm,
  struct dlm_lock_resource *res)
{
 assert_spin_locked(&res->spinlock);
 res->inflight_assert_workers++;
 mlog(0, "%s:%.*s: inflight assert worker++: now %u\n",
   dlm->name, res->lockname.len, res->lockname.name,
   res->inflight_assert_workers);
}
