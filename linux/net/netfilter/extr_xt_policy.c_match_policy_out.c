
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_policy_info {int flags; int len; struct xt_policy_elem* pol; } ;
struct xt_policy_elem {int dummy; } ;
struct xfrm_dst {struct dst_entry* child; } ;
struct sk_buff {int dummy; } ;
struct dst_entry {int * xfrm; } ;


 int XT_POLICY_MATCH_STRICT ;
 scalar_t__ match_xfrm_state (int *,struct xt_policy_elem const*,unsigned short) ;
 struct dst_entry* skb_dst (struct sk_buff const*) ;

__attribute__((used)) static int
match_policy_out(const struct sk_buff *skb, const struct xt_policy_info *info,
   unsigned short family)
{
 const struct xt_policy_elem *e;
 const struct dst_entry *dst = skb_dst(skb);
 int strict = info->flags & XT_POLICY_MATCH_STRICT;
 int i, pos;

 if (dst->xfrm == ((void*)0))
  return -1;

 for (i = 0; dst && dst->xfrm;
      dst = ((struct xfrm_dst *)dst)->child, i++) {
  pos = strict ? i : 0;
  if (pos >= info->len)
   return 0;
  e = &info->pol[pos];

  if (match_xfrm_state(dst->xfrm, e, family)) {
   if (!strict)
    return 1;
  } else if (strict)
   return 0;
 }

 return strict ? i == info->len : 0;
}
