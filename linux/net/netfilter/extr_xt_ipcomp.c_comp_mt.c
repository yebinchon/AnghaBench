
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_ipcomp {int invflags; int * spis; } ;
struct xt_action_param {scalar_t__ fragoff; int hotdrop; int thoff; struct xt_ipcomp* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ip_comp_hdr {int cpi; } ;
typedef int _comphdr ;


 int XT_IPCOMP_INV_SPI ;
 int ntohs (int ) ;
 int pr_debug (char*) ;
 struct ip_comp_hdr* skb_header_pointer (struct sk_buff const*,int ,int,struct ip_comp_hdr*) ;
 int spi_match (int ,int ,int ,int) ;

__attribute__((used)) static bool comp_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 struct ip_comp_hdr _comphdr;
 const struct ip_comp_hdr *chdr;
 const struct xt_ipcomp *compinfo = par->matchinfo;


 if (par->fragoff != 0)
  return 0;

 chdr = skb_header_pointer(skb, par->thoff, sizeof(_comphdr), &_comphdr);
 if (chdr == ((void*)0)) {



  pr_debug("Dropping evil IPComp tinygram.\n");
  par->hotdrop = 1;
  return 0;
 }

 return spi_match(compinfo->spis[0], compinfo->spis[1],
    ntohs(chdr->cpi),
    !!(compinfo->invflags & XT_IPCOMP_INV_SPI));
}
