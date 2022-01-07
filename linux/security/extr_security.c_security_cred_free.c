
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int * security; } ;


 int call_void_hook (int ,struct cred*) ;
 int cred_free ;
 int kfree (int *) ;
 scalar_t__ unlikely (int ) ;

void security_cred_free(struct cred *cred)
{




 if (unlikely(cred->security == ((void*)0)))
  return;

 call_void_hook(cred_free, cred);

 kfree(cred->security);
 cred->security = ((void*)0);
}
