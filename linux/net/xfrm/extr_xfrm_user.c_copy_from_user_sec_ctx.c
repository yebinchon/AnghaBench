
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_user_sec_ctx {int dummy; } ;
struct xfrm_policy {int security; } ;
struct nlattr {int dummy; } ;


 int GFP_KERNEL ;
 size_t XFRMA_SEC_CTX ;
 struct xfrm_user_sec_ctx* nla_data (struct nlattr*) ;
 int security_xfrm_policy_alloc (int *,struct xfrm_user_sec_ctx*,int ) ;

__attribute__((used)) static int copy_from_user_sec_ctx(struct xfrm_policy *pol, struct nlattr **attrs)
{
 struct nlattr *rt = attrs[XFRMA_SEC_CTX];
 struct xfrm_user_sec_ctx *uctx;

 if (!rt)
  return 0;

 uctx = nla_data(rt);
 return security_xfrm_policy_alloc(&pol->security, uctx, GFP_KERNEL);
}
