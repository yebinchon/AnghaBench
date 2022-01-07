
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int refs; } ;


 int dlm_lockres_release ;
 int kref_put (int *,int ) ;

void dlm_lockres_put(struct dlm_lock_resource *res)
{
 kref_put(&res->refs, dlm_lockres_release);
}
