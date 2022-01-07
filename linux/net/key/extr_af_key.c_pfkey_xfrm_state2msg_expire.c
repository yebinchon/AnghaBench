
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {int dummy; } ;
struct sk_buff {int dummy; } ;


 struct sk_buff* __pfkey_xfrm_state2msg (struct xfrm_state const*,int ,int) ;

__attribute__((used)) static inline struct sk_buff *pfkey_xfrm_state2msg_expire(const struct xfrm_state *x,
         int hsc)
{
 return __pfkey_xfrm_state2msg(x, 0, hsc);
}
