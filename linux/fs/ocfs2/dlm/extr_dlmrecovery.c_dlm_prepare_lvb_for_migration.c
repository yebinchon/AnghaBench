
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dlm_migratable_lockres {int lvb; } ;
struct TYPE_7__ {scalar_t__ type; int node; int cookie; } ;
struct dlm_lock {TYPE_4__* lockres; TYPE_3__ ml; TYPE_1__* lksb; } ;
struct TYPE_6__ {int name; int len; } ;
struct TYPE_8__ {TYPE_2__ lockname; } ;
struct TYPE_5__ {int lvb; } ;


 int BUG () ;
 int DLM_BLOCKED_LIST ;
 int DLM_LVB_LEN ;
 scalar_t__ LKM_EXMODE ;
 scalar_t__ LKM_PRMODE ;
 int ML_ERROR ;
 int be64_to_cpu (int ) ;
 int dlm_get_lock_cookie_node (int ) ;
 int dlm_get_lock_cookie_seq (int ) ;
 scalar_t__ dlm_lvb_is_empty (int ) ;
 int dlm_print_one_lock_resource (TYPE_4__*) ;
 int memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int mlog (int ,char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void dlm_prepare_lvb_for_migration(struct dlm_lock *lock,
       struct dlm_migratable_lockres *mres,
       int queue)
{
 if (!lock->lksb)
        return;


 if (queue == DLM_BLOCKED_LIST)
  return;


 if (lock->ml.type != LKM_EXMODE && lock->ml.type != LKM_PRMODE)
  return;

 if (dlm_lvb_is_empty(mres->lvb)) {
  memcpy(mres->lvb, lock->lksb->lvb, DLM_LVB_LEN);
  return;
 }


 if (!memcmp(mres->lvb, lock->lksb->lvb, DLM_LVB_LEN))
  return;

 mlog(ML_ERROR, "Mismatched lvb in lock cookie=%u:%llu, name=%.*s, "
      "node=%u\n",
      dlm_get_lock_cookie_node(be64_to_cpu(lock->ml.cookie)),
      dlm_get_lock_cookie_seq(be64_to_cpu(lock->ml.cookie)),
      lock->lockres->lockname.len, lock->lockres->lockname.name,
      lock->ml.node);
 dlm_print_one_lock_resource(lock->lockres);
 BUG();
}
