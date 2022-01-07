
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;
typedef int gfp_t ;


 int call_int_hook (int ,int ,struct cred*,int ) ;
 int cred_alloc_blank ;
 int lsm_cred_alloc (struct cred*,int ) ;
 int security_cred_free (struct cred*) ;
 scalar_t__ unlikely (int) ;

int security_cred_alloc_blank(struct cred *cred, gfp_t gfp)
{
 int rc = lsm_cred_alloc(cred, gfp);

 if (rc)
  return rc;

 rc = call_int_hook(cred_alloc_blank, 0, cred, gfp);
 if (unlikely(rc))
  security_cred_free(cred);
 return rc;
}
