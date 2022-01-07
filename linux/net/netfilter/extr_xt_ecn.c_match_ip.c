
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_ecn_info {int ip_ect; int invert; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tos; } ;


 int XT_ECN_IP_MASK ;
 int XT_ECN_OP_MATCH_IP ;
 TYPE_1__* ip_hdr (struct sk_buff const*) ;

__attribute__((used)) static inline bool match_ip(const struct sk_buff *skb,
       const struct xt_ecn_info *einfo)
{
 return ((ip_hdr(skb)->tos & XT_ECN_IP_MASK) == einfo->ip_ect) ^
        !!(einfo->invert & XT_ECN_OP_MATCH_IP);
}
