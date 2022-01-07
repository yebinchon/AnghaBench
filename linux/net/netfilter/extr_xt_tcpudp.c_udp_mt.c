
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_udp {int invflags; int * dpts; int * spts; } ;
struct xt_action_param {scalar_t__ fragoff; int hotdrop; int thoff; struct xt_udp* matchinfo; } ;
struct udphdr {int dest; int source; } ;
struct sk_buff {int dummy; } ;
typedef int _udph ;


 int XT_UDP_INV_DSTPT ;
 int XT_UDP_INV_SRCPT ;
 int ntohs (int ) ;
 scalar_t__ port_match (int ,int ,int ,int) ;
 int pr_debug (char*) ;
 struct udphdr* skb_header_pointer (struct sk_buff const*,int ,int,struct udphdr*) ;

__attribute__((used)) static bool udp_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct udphdr *uh;
 struct udphdr _udph;
 const struct xt_udp *udpinfo = par->matchinfo;


 if (par->fragoff != 0)
  return 0;

 uh = skb_header_pointer(skb, par->thoff, sizeof(_udph), &_udph);
 if (uh == ((void*)0)) {


  pr_debug("Dropping evil UDP tinygram.\n");
  par->hotdrop = 1;
  return 0;
 }

 return port_match(udpinfo->spts[0], udpinfo->spts[1],
     ntohs(uh->source),
     !!(udpinfo->invflags & XT_UDP_INV_SRCPT))
  && port_match(udpinfo->dpts[0], udpinfo->dpts[1],
         ntohs(uh->dest),
         !!(udpinfo->invflags & XT_UDP_INV_DSTPT));
}
