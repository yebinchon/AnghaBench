
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dlm_migratable_lockres {int num_locks; struct dlm_migratable_lock* ml; } ;
struct dlm_migratable_lock {int list; int node; int flags; int highest_blocked; int convert_type; int type; int cookie; } ;
struct TYPE_4__ {int node; int highest_blocked; int convert_type; int type; int cookie; } ;
struct dlm_lock {TYPE_2__ ml; TYPE_1__* lksb; } ;
struct TYPE_3__ {int flags; } ;


 int DLM_MAX_MIGRATABLE_LOCKS ;
 int dlm_prepare_lvb_for_migration (struct dlm_lock*,struct dlm_migratable_lockres*,int) ;

__attribute__((used)) static int dlm_add_lock_to_array(struct dlm_lock *lock,
     struct dlm_migratable_lockres *mres, int queue)
{
 struct dlm_migratable_lock *ml;
 int lock_num = mres->num_locks;

 ml = &(mres->ml[lock_num]);
 ml->cookie = lock->ml.cookie;
 ml->type = lock->ml.type;
 ml->convert_type = lock->ml.convert_type;
 ml->highest_blocked = lock->ml.highest_blocked;
 ml->list = queue;
 if (lock->lksb) {
  ml->flags = lock->lksb->flags;
  dlm_prepare_lvb_for_migration(lock, mres, queue);
 }
 ml->node = lock->ml.node;
 mres->num_locks++;

 if (mres->num_locks == DLM_MAX_MIGRATABLE_LOCKS)
  return 1;
 return 0;
}
