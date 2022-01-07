
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iphdr {int ihl; int daddr; int frag_off; int ttl; int tos; } ;
typedef struct iphdr u8 ;
struct xfrm_state {struct ah_data* data; } ;
struct sk_buff {int dummy; } ;
struct ip_auth_hdr {struct iphdr* auth_data; } ;
struct crypto_async_request {struct sk_buff* data; } ;
struct ah_data {int icv_trunc_len; int ahash; } ;
struct TYPE_4__ {struct iphdr* tmp; } ;
struct TYPE_3__ {struct xfrm_state* xfrm; } ;


 TYPE_2__* AH_SKB_CB (struct sk_buff*) ;
 struct iphdr* ah_tmp_icv (int ,struct iphdr*,int) ;
 struct ip_auth_hdr* ip_auth_hdr (struct sk_buff*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_hdrlen (struct sk_buff*) ;
 int kfree (struct iphdr*) ;
 int memcpy (struct iphdr*,struct iphdr*,int) ;
 TYPE_1__* skb_dst (struct sk_buff*) ;
 int xfrm_output_resume (struct sk_buff*,int) ;

__attribute__((used)) static void ah_output_done(struct crypto_async_request *base, int err)
{
 u8 *icv;
 struct iphdr *iph;
 struct sk_buff *skb = base->data;
 struct xfrm_state *x = skb_dst(skb)->xfrm;
 struct ah_data *ahp = x->data;
 struct iphdr *top_iph = ip_hdr(skb);
 struct ip_auth_hdr *ah = ip_auth_hdr(skb);
 int ihl = ip_hdrlen(skb);

 iph = AH_SKB_CB(skb)->tmp;
 icv = ah_tmp_icv(ahp->ahash, iph, ihl);
 memcpy(ah->auth_data, icv, ahp->icv_trunc_len);

 top_iph->tos = iph->tos;
 top_iph->ttl = iph->ttl;
 top_iph->frag_off = iph->frag_off;
 if (top_iph->ihl != 5) {
  top_iph->daddr = iph->daddr;
  memcpy(top_iph+1, iph+1, top_iph->ihl*4 - sizeof(struct iphdr));
 }

 kfree(AH_SKB_CB(skb)->tmp);
 xfrm_output_resume(skb, err);
}
