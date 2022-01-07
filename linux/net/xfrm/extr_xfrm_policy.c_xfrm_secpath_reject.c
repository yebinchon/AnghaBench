
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_state {TYPE_1__* type; } ;
struct sk_buff {int dummy; } ;
struct sec_path {int len; struct xfrm_state** xvec; } ;
struct flowi {int dummy; } ;
struct TYPE_2__ {int (* reject ) (struct xfrm_state*,struct sk_buff*,struct flowi const*) ;} ;


 struct sec_path* skb_sec_path (struct sk_buff*) ;
 int stub1 (struct xfrm_state*,struct sk_buff*,struct flowi const*) ;

__attribute__((used)) static inline int
xfrm_secpath_reject(int idx, struct sk_buff *skb, const struct flowi *fl)
{
 struct sec_path *sp = skb_sec_path(skb);
 struct xfrm_state *x;

 if (!sp || idx < 0 || idx >= sp->len)
  return 0;
 x = sp->xvec[idx];
 if (!x->type->reject)
  return 0;
 return x->type->reject(x, skb, fl);
}
