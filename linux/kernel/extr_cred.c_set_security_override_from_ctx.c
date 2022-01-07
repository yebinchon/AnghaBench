
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cred {int dummy; } ;


 int security_secctx_to_secid (char const*,int ,int *) ;
 int set_security_override (struct cred*,int ) ;
 int strlen (char const*) ;

int set_security_override_from_ctx(struct cred *new, const char *secctx)
{
 u32 secid;
 int ret;

 ret = security_secctx_to_secid(secctx, strlen(secctx), &secid);
 if (ret < 0)
  return ret;

 return set_security_override(new, secid);
}
