
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct rsc {int cred; scalar_t__ mechctx; TYPE_1__ handle; } ;


 int free_svc_cred (int *) ;
 int gss_delete_sec_context (scalar_t__*) ;
 int kfree (int ) ;

__attribute__((used)) static void rsc_free(struct rsc *rsci)
{
 kfree(rsci->handle.data);
 if (rsci->mechctx)
  gss_delete_sec_context(&rsci->mechctx);
 free_svc_cred(&rsci->cred);
}
