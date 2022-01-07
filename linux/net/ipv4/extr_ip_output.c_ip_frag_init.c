
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct iphdr {int frag_off; } ;
struct ip_frag_state {int DF; unsigned int hlen; unsigned int ll_rs; unsigned int mtu; unsigned int ptr; int offset; int not_last_frag; scalar_t__ left; } ;


 int IP_MF ;
 int IP_OFFSET ;
 int htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ntohs (int) ;

void ip_frag_init(struct sk_buff *skb, unsigned int hlen,
    unsigned int ll_rs, unsigned int mtu, bool DF,
    struct ip_frag_state *state)
{
 struct iphdr *iph = ip_hdr(skb);

 state->DF = DF;
 state->hlen = hlen;
 state->ll_rs = ll_rs;
 state->mtu = mtu;

 state->left = skb->len - hlen;
 state->ptr = hlen;

 state->offset = (ntohs(iph->frag_off) & IP_OFFSET) << 3;
 state->not_last_frag = iph->frag_off & htons(IP_MF);
}
