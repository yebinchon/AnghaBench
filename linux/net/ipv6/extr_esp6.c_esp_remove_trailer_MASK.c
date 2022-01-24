#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct xfrm_state {struct crypto_aead* data; } ;
struct xfrm_offload {int flags; int proto; } ;
struct sk_buff {int len; scalar_t__ ip_summed; int /*<<< orphan*/  csum; } ;
struct ip_esp_hdr {int dummy; } ;
struct crypto_aead {int dummy; } ;
typedef  int /*<<< orphan*/  __wsum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CHECKSUM_COMPLETE ; 
 int EINVAL ; 
 int XFRM_ESP_NO_TRAILER ; 
 int FUNC1 (struct crypto_aead*) ; 
 int FUNC2 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sk_buff*,int,int*,int) ; 
 struct xfrm_state* FUNC8 (struct sk_buff*) ; 
 struct xfrm_offload* FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC10(struct sk_buff *skb)
{
	struct xfrm_state *x = FUNC8(skb);
	struct xfrm_offload *xo = FUNC9(skb);
	struct crypto_aead *aead = x->data;
	int alen, hlen, elen;
	int padlen, trimlen;
	__wsum csumdiff;
	u8 nexthdr[2];
	int ret;

	alen = FUNC1(aead);
	hlen = sizeof(struct ip_esp_hdr) + FUNC2(aead);
	elen = skb->len - hlen;

	if (xo && (xo->flags & XFRM_ESP_NO_TRAILER)) {
		ret = xo->proto;
		goto out;
	}

	ret = FUNC7(skb, skb->len - alen - 2, nexthdr, 2);
	FUNC0(ret);

	ret = -EINVAL;
	padlen = nexthdr[0];
	if (padlen + 2 + alen >= elen) {
		FUNC4("ipsec esp packet is garbage padlen=%d, elen=%d\n",
				    padlen + 2, elen - alen);
		goto out;
	}

	trimlen = alen + padlen + 2;
	if (skb->ip_summed == CHECKSUM_COMPLETE) {
		csumdiff = FUNC6(skb, skb->len - trimlen, trimlen, 0);
		skb->csum = FUNC3(skb->csum, csumdiff,
					   skb->len - trimlen);
	}
	FUNC5(skb, skb->len - trimlen);

	ret = nexthdr[1];

out:
	return ret;
}