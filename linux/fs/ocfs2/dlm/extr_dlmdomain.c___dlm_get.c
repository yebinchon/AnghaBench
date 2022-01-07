
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {int dlm_refs; } ;


 int kref_get (int *) ;

__attribute__((used)) static void __dlm_get(struct dlm_ctxt *dlm)
{
 kref_get(&dlm->dlm_refs);
}
