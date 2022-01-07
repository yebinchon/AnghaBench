
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nf_hook_state {TYPE_1__* out; struct net* net; } ;
struct net {int dummy; } ;
struct clusterip_config {scalar_t__ ifindex; int clustermac; } ;
struct arphdr {scalar_t__ ar_hrd; scalar_t__ ar_pro; int ar_pln; scalar_t__ ar_hln; scalar_t__ ar_op; } ;
struct arp_payload {int src_hw; int src_ip; } ;
struct TYPE_2__ {scalar_t__ ifindex; } ;


 int ARPHRD_ETHER ;
 int ARPOP_REPLY ;
 int ARPOP_REQUEST ;
 scalar_t__ ETH_ALEN ;
 int ETH_P_IP ;
 unsigned int NF_ACCEPT ;
 struct arphdr* arp_hdr (struct sk_buff*) ;
 int arp_print (struct arp_payload*) ;
 struct clusterip_config* clusterip_config_find_get (struct net*,int ,int ) ;
 int clusterip_config_put (struct clusterip_config*) ;
 scalar_t__ htons (int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static unsigned int
arp_mangle(void *priv,
    struct sk_buff *skb,
    const struct nf_hook_state *state)
{
 struct arphdr *arp = arp_hdr(skb);
 struct arp_payload *payload;
 struct clusterip_config *c;
 struct net *net = state->net;


 if (arp->ar_hrd != htons(ARPHRD_ETHER) ||
     arp->ar_pro != htons(ETH_P_IP) ||
     arp->ar_pln != 4 || arp->ar_hln != ETH_ALEN)
  return NF_ACCEPT;


 if (arp->ar_op != htons(ARPOP_REPLY) &&
     arp->ar_op != htons(ARPOP_REQUEST))
  return NF_ACCEPT;

 payload = (void *)(arp+1);



 c = clusterip_config_find_get(net, payload->src_ip, 0);
 if (!c)
  return NF_ACCEPT;





 if (c->ifindex != state->out->ifindex) {
  pr_debug("not mangling arp reply on different interface: cip'%d'-skb'%d'\n",
    c->ifindex, state->out->ifindex);
  clusterip_config_put(c);
  return NF_ACCEPT;
 }


 memcpy(payload->src_hw, c->clustermac, arp->ar_hln);






 clusterip_config_put(c);

 return NF_ACCEPT;
}
