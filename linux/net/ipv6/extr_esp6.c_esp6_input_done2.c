
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; } ;
struct xfrm_state {TYPE_1__ props; struct crypto_aead* data; } ;
struct xfrm_offload {int flags; } ;
struct sk_buff {int dummy; } ;
struct ip_esp_hdr {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_4__ {int tmp; } ;


 int CRYPTO_DONE ;
 int EINVAL ;
 TYPE_2__* ESP_SKB_CB (struct sk_buff*) ;
 int IPPROTO_NONE ;
 scalar_t__ XFRM_MODE_TUNNEL ;
 int crypto_aead_ivsize (struct crypto_aead*) ;
 int esp_remove_trailer (struct sk_buff*) ;
 int kfree (int ) ;
 int skb_network_header (struct sk_buff*) ;
 int skb_network_header_len (struct sk_buff*) ;
 int skb_postpull_rcsum (struct sk_buff*,int ,int) ;
 int skb_pull_rcsum (struct sk_buff*,int) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int skb_set_transport_header (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;
 struct xfrm_state* xfrm_input_state (struct sk_buff*) ;
 struct xfrm_offload* xfrm_offload (struct sk_buff*) ;

int esp6_input_done2(struct sk_buff *skb, int err)
{
 struct xfrm_state *x = xfrm_input_state(skb);
 struct xfrm_offload *xo = xfrm_offload(skb);
 struct crypto_aead *aead = x->data;
 int hlen = sizeof(struct ip_esp_hdr) + crypto_aead_ivsize(aead);
 int hdr_len = skb_network_header_len(skb);

 if (!xo || (xo && !(xo->flags & CRYPTO_DONE)))
  kfree(ESP_SKB_CB(skb)->tmp);

 if (unlikely(err))
  goto out;

 err = esp_remove_trailer(skb);
 if (unlikely(err < 0))
  goto out;

 skb_postpull_rcsum(skb, skb_network_header(skb),
      skb_network_header_len(skb));
 skb_pull_rcsum(skb, hlen);
 if (x->props.mode == XFRM_MODE_TUNNEL)
  skb_reset_transport_header(skb);
 else
  skb_set_transport_header(skb, -hdr_len);


 if (err == IPPROTO_NONE)
  err = -EINVAL;

out:
 return err;
}
