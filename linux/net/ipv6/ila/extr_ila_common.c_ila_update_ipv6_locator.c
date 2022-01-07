
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ipv6hdr {int daddr; } ;
struct ila_params {int csum_mode; int locator; } ;
struct ila_addr {int loc; int ident; } ;






 int WARN_ON (int ) ;
 struct ila_addr* ila_a2i (int *) ;
 int ila_csum_adjust_transport (struct sk_buff*,struct ila_params*) ;
 int ila_csum_do_neutral_fmt (struct ila_addr*,struct ila_params*) ;
 int ila_csum_do_neutral_nofmt (struct ila_addr*,struct ila_params*) ;
 int ila_csum_neutral_set (int ) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;

void ila_update_ipv6_locator(struct sk_buff *skb, struct ila_params *p,
        bool sir2ila)
{
 struct ipv6hdr *ip6h = ipv6_hdr(skb);
 struct ila_addr *iaddr = ila_a2i(&ip6h->daddr);

 switch (p->csum_mode) {
 case 131:
  ila_csum_adjust_transport(skb, p);
  break;
 case 130:
  if (sir2ila) {
   if (WARN_ON(ila_csum_neutral_set(iaddr->ident))) {



    break;
   }
  } else if (!ila_csum_neutral_set(iaddr->ident)) {



   break;
  }
  ila_csum_do_neutral_fmt(iaddr, p);
  break;
 case 129:
  ila_csum_do_neutral_nofmt(iaddr, p);
  break;
 case 128:
  break;
 }


 iaddr->loc = p->locator;
}
