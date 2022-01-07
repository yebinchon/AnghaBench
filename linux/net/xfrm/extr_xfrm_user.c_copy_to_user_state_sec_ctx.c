
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {scalar_t__ security; } ;
struct sk_buff {int dummy; } ;


 int copy_sec_ctx (scalar_t__,struct sk_buff*) ;

__attribute__((used)) static inline int copy_to_user_state_sec_ctx(struct xfrm_state *x, struct sk_buff *skb)
{
 if (x->security) {
  return copy_sec_ctx(x->security, skb);
 }
 return 0;
}
