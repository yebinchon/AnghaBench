
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int header_len; } ;
struct xfrm_state {TYPE_1__ props; int lock; int * coaddr; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int saddr; } ;
struct ipv6_destopt_hdr {int hdrlen; int nexthdr; } ;
struct ipv6_destopt_hao {int length; int addr; int type; } ;


 int BUILD_BUG_ON (int) ;
 int IPPROTO_DSTOPTS ;
 int IPV6_TLV_HAO ;
 int WARN_ON (int) ;
 int calc_padlen (int,int) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int memcpy (int *,int *,int) ;
 struct ipv6_destopt_hao* mip6_padn (char*,int ) ;
 int * skb_mac_header (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int ) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int mip6_destopt_output(struct xfrm_state *x, struct sk_buff *skb)
{
 struct ipv6hdr *iph;
 struct ipv6_destopt_hdr *dstopt;
 struct ipv6_destopt_hao *hao;
 u8 nexthdr;
 int len;

 skb_push(skb, -skb_network_offset(skb));
 iph = ipv6_hdr(skb);

 nexthdr = *skb_mac_header(skb);
 *skb_mac_header(skb) = IPPROTO_DSTOPTS;

 dstopt = (struct ipv6_destopt_hdr *)skb_transport_header(skb);
 dstopt->nexthdr = nexthdr;

 hao = mip6_padn((char *)(dstopt + 1),
   calc_padlen(sizeof(*dstopt), 6));

 hao->type = IPV6_TLV_HAO;
 BUILD_BUG_ON(sizeof(*hao) != 18);
 hao->length = sizeof(*hao) - 2;

 len = ((char *)hao - (char *)dstopt) + sizeof(*hao);

 memcpy(&hao->addr, &iph->saddr, sizeof(hao->addr));
 spin_lock_bh(&x->lock);
 memcpy(&iph->saddr, x->coaddr, sizeof(iph->saddr));
 spin_unlock_bh(&x->lock);

 WARN_ON(len != x->props.header_len);
 dstopt->hdrlen = (x->props.header_len >> 3) - 1;

 return 0;
}
