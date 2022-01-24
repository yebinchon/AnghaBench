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
struct xfrm_state {struct crypto_aead* data; } ;
struct xfrm_offload {int flags; } ;
struct sk_buff {int /*<<< orphan*/  ip_summed; } ;
struct ip_esp_hdr {int dummy; } ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int CRYPTO_DONE ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct crypto_aead*) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,scalar_t__) ; 
 struct xfrm_offload* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct xfrm_state *x, struct sk_buff *skb)
{
	struct crypto_aead *aead = x->data;
	struct xfrm_offload *xo = FUNC3(skb);

	if (!FUNC2(skb, sizeof(struct ip_esp_hdr) + FUNC0(aead)))
		return -EINVAL;

	if (!(xo->flags & CRYPTO_DONE))
		skb->ip_summed = CHECKSUM_NONE;

	return FUNC1(skb, 0);
}