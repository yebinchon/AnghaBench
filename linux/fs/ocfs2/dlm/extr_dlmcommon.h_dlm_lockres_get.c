
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int refs; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void dlm_lockres_get(struct dlm_lock_resource *res)
{


 kref_get(&res->refs);
}
