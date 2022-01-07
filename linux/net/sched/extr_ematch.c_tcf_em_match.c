
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_pkt_info {int dummy; } ;
struct tcf_ematch {TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int (* match ) (struct sk_buff*,struct tcf_ematch*,struct tcf_pkt_info*) ;} ;


 int stub1 (struct sk_buff*,struct tcf_ematch*,struct tcf_pkt_info*) ;
 scalar_t__ tcf_em_is_inverted (struct tcf_ematch*) ;

__attribute__((used)) static inline int tcf_em_match(struct sk_buff *skb, struct tcf_ematch *em,
          struct tcf_pkt_info *info)
{
 int r = em->ops->match(skb, em, info);

 return tcf_em_is_inverted(em) ? !r : r;
}
