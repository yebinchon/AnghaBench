
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int len; } ;
struct dlm_lock_resource {scalar_t__ inflight_assert_workers; TYPE_1__ lockname; int spinlock; } ;
struct dlm_ctxt {int name; } ;


 int BUG_ON (int) ;
 int assert_spin_locked (int *) ;
 int mlog (int ,char*,int ,int ,int ,scalar_t__) ;

__attribute__((used)) static void __dlm_lockres_drop_inflight_worker(struct dlm_ctxt *dlm,
  struct dlm_lock_resource *res)
{
 assert_spin_locked(&res->spinlock);
 BUG_ON(res->inflight_assert_workers == 0);
 res->inflight_assert_workers--;
 mlog(0, "%s:%.*s: inflight assert worker--: now %u\n",
   dlm->name, res->lockname.len, res->lockname.name,
   res->inflight_assert_workers);
}
