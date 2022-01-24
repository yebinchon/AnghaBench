#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* dev; } ;
struct TYPE_5__ {scalar_t__ spi; } ;
struct xfrm_state {TYPE_2__ xso; TYPE_1__ id; struct crypto_aead* data; } ;
struct xfrm_offload {int /*<<< orphan*/  flags; } ;
struct sk_buff {int encap_hdr_csum; TYPE_3__* dev; } ;
struct sec_path {int len; struct xfrm_state** xvec; } ;
struct ip_esp_hdr {scalar_t__ spi; } ;
struct crypto_aead {int dummy; } ;
typedef  int netdev_features_t ;
struct TYPE_8__ {int gso_type; } ;
struct TYPE_7__ {int gso_partial_features; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int NETIF_F_CSUM_MASK ; 
 int NETIF_F_HW_ESP ; 
 int NETIF_F_HW_ESP_TX_CSUM ; 
 int NETIF_F_SG ; 
 int SKB_GSO_ESP ; 
 int /*<<< orphan*/  XFRM_GSO_SEGMENT ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct crypto_aead*) ; 
 struct ip_esp_hdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__) ; 
 struct sec_path* FUNC5 (struct sk_buff*) ; 
 TYPE_4__* FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (struct xfrm_state*,struct sk_buff*,int) ; 
 struct xfrm_offload* FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC9(struct sk_buff *skb,
				        netdev_features_t features)
{
	struct xfrm_state *x;
	struct ip_esp_hdr *esph;
	struct crypto_aead *aead;
	netdev_features_t esp_features = features;
	struct xfrm_offload *xo = FUNC8(skb);
	struct sec_path *sp;

	if (!xo)
		return FUNC0(-EINVAL);

	if (!(FUNC6(skb)->gso_type & SKB_GSO_ESP))
		return FUNC0(-EINVAL);

	sp = FUNC5(skb);
	x = sp->xvec[sp->len - 1];
	aead = x->data;
	esph = FUNC3(skb);

	if (esph->spi != x->id.spi)
		return FUNC0(-EINVAL);

	if (!FUNC4(skb, sizeof(*esph) + FUNC2(aead)))
		return FUNC0(-EINVAL);

	FUNC1(skb, sizeof(*esph) + FUNC2(aead));

	skb->encap_hdr_csum = 1;

	if ((!(skb->dev->gso_partial_features & NETIF_F_HW_ESP) &&
	     !(features & NETIF_F_HW_ESP)) || x->xso.dev != skb->dev)
		esp_features = features & ~(NETIF_F_SG | NETIF_F_CSUM_MASK);
	else if (!(features & NETIF_F_HW_ESP_TX_CSUM) &&
		 !(skb->dev->gso_partial_features & NETIF_F_HW_ESP_TX_CSUM))
		esp_features = features & ~NETIF_F_CSUM_MASK;

	xo->flags |= XFRM_GSO_SEGMENT;

	return FUNC7(x, skb, esp_features);
}