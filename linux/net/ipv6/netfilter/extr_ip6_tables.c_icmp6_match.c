
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_action_param {scalar_t__ fragoff; int hotdrop; int thoff; struct ip6t_icmp* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ip6t_icmp {int invflags; int * code; int type; } ;
struct icmp6hdr {int icmp6_code; int icmp6_type; } ;
typedef int _icmph ;


 int IP6T_ICMP_INV ;
 int icmp6_type_code_match (int ,int ,int ,int ,int ,int) ;
 struct icmp6hdr* skb_header_pointer (struct sk_buff const*,int ,int,struct icmp6hdr*) ;

__attribute__((used)) static bool
icmp6_match(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct icmp6hdr *ic;
 struct icmp6hdr _icmph;
 const struct ip6t_icmp *icmpinfo = par->matchinfo;


 if (par->fragoff != 0)
  return 0;

 ic = skb_header_pointer(skb, par->thoff, sizeof(_icmph), &_icmph);
 if (ic == ((void*)0)) {



  par->hotdrop = 1;
  return 0;
 }

 return icmp6_type_code_match(icmpinfo->type,
         icmpinfo->code[0],
         icmpinfo->code[1],
         ic->icmp6_type, ic->icmp6_code,
         !!(icmpinfo->invflags&IP6T_ICMP_INV));
}
