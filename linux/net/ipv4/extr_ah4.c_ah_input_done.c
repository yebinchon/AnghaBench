
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ mode; } ;
struct xfrm_state {TYPE_1__ props; struct ah_data* data; } ;
struct sk_buff {int network_header; } ;
struct iphdr {int dummy; } ;
struct ip_auth_hdr {int hdrlen; int nexthdr; } ;
struct crypto_async_request {struct sk_buff* data; } ;
struct ah_data {int icv_trunc_len; int ahash; } ;
struct TYPE_4__ {struct iphdr* tmp; } ;


 TYPE_2__* AH_SKB_CB (struct sk_buff*) ;
 int EBADMSG ;
 scalar_t__ XFRM_MODE_TUNNEL ;
 int __skb_pull (struct sk_buff*,int) ;
 int * ah_tmp_auth (struct iphdr*,int) ;
 int * ah_tmp_icv (int ,int *,int ) ;
 scalar_t__ crypto_memneq (int *,int *,int ) ;
 struct ip_auth_hdr* ip_auth_hdr (struct sk_buff*) ;
 int ip_hdrlen (struct sk_buff*) ;
 int kfree (struct iphdr*) ;
 int memcpy (int ,struct iphdr*,int) ;
 int skb_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int skb_set_transport_header (struct sk_buff*,int) ;
 int xfrm_input_resume (struct sk_buff*,int) ;
 struct xfrm_state* xfrm_input_state (struct sk_buff*) ;

__attribute__((used)) static void ah_input_done(struct crypto_async_request *base, int err)
{
 u8 *auth_data;
 u8 *icv;
 struct iphdr *work_iph;
 struct sk_buff *skb = base->data;
 struct xfrm_state *x = xfrm_input_state(skb);
 struct ah_data *ahp = x->data;
 struct ip_auth_hdr *ah = ip_auth_hdr(skb);
 int ihl = ip_hdrlen(skb);
 int ah_hlen = (ah->hdrlen + 2) << 2;

 if (err)
  goto out;

 work_iph = AH_SKB_CB(skb)->tmp;
 auth_data = ah_tmp_auth(work_iph, ihl);
 icv = ah_tmp_icv(ahp->ahash, auth_data, ahp->icv_trunc_len);

 err = crypto_memneq(icv, auth_data, ahp->icv_trunc_len) ? -EBADMSG : 0;
 if (err)
  goto out;

 err = ah->nexthdr;

 skb->network_header += ah_hlen;
 memcpy(skb_network_header(skb), work_iph, ihl);
 __skb_pull(skb, ah_hlen + ihl);

 if (x->props.mode == XFRM_MODE_TUNNEL)
  skb_reset_transport_header(skb);
 else
  skb_set_transport_header(skb, -ihl);
out:
 kfree(AH_SKB_CB(skb)->tmp);
 xfrm_input_resume(skb, err);
}
