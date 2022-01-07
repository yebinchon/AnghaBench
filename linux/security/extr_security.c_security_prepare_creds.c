
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;
typedef int gfp_t ;


 int call_int_hook (int ,int ,struct cred*,struct cred const*,int ) ;
 int cred_prepare ;
 int lsm_cred_alloc (struct cred*,int ) ;
 int security_cred_free (struct cred*) ;
 scalar_t__ unlikely (int) ;

int security_prepare_creds(struct cred *new, const struct cred *old, gfp_t gfp)
{
 int rc = lsm_cred_alloc(new, gfp);

 if (rc)
  return rc;

 rc = call_int_hook(cred_prepare, 0, new, old, gfp);
 if (unlikely(rc))
  security_cred_free(new);
 return rc;
}
