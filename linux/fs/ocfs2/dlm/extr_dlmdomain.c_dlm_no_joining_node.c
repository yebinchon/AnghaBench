
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {scalar_t__ joining_node; int spinlock; } ;


 scalar_t__ DLM_LOCK_RES_OWNER_UNKNOWN ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int dlm_no_joining_node(struct dlm_ctxt *dlm)
{
 int ret;

 spin_lock(&dlm->spinlock);
 ret = dlm->joining_node == DLM_LOCK_RES_OWNER_UNKNOWN;
 spin_unlock(&dlm->spinlock);

 return ret;
}
