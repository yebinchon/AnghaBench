
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;


 int call_void_hook (int ,struct cred*,struct cred const*) ;
 int cred_transfer ;

void security_transfer_creds(struct cred *new, const struct cred *old)
{
 call_void_hook(cred_transfer, new, old);
}
