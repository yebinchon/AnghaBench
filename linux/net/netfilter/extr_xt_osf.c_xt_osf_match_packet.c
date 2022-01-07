
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_action_param {int matchinfo; } ;
struct sk_buff {int dummy; } ;


 int nf_osf_fingers ;
 int nf_osf_match (struct sk_buff const*,int ,int ,int ,int ,int ,int ,int ) ;
 int xt_family (struct xt_action_param*) ;
 int xt_hooknum (struct xt_action_param*) ;
 int xt_in (struct xt_action_param*) ;
 int xt_net (struct xt_action_param*) ;
 int xt_out (struct xt_action_param*) ;

__attribute__((used)) static bool
xt_osf_match_packet(const struct sk_buff *skb, struct xt_action_param *p)
{
 return nf_osf_match(skb, xt_family(p), xt_hooknum(p), xt_in(p),
       xt_out(p), p->matchinfo, xt_net(p), nf_osf_fingers);
}
