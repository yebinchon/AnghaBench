
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_policy {scalar_t__ security; } ;
struct sk_buff {int dummy; } ;


 int copy_sec_ctx (scalar_t__,struct sk_buff*) ;

__attribute__((used)) static inline int copy_to_user_sec_ctx(struct xfrm_policy *xp, struct sk_buff *skb)
{
 if (xp->security)
  return copy_sec_ctx(xp->security, skb);
 return 0;
}
