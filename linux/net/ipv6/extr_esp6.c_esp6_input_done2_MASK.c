#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ mode; } ;
struct xfrm_state {TYPE_1__ props; struct crypto_aead* data; } ;
struct xfrm_offload {int flags; } ;
struct sk_buff {int dummy; } ;
struct ip_esp_hdr {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  tmp; } ;

/* Variables and functions */
 int CRYPTO_DONE ; 
 int EINVAL ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int IPPROTO_NONE ; 
 scalar_t__ XFRM_MODE_TUNNEL ; 
 int FUNC1 (struct crypto_aead*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 scalar_t__ FUNC10 (int) ; 
 struct xfrm_state* FUNC11 (struct sk_buff*) ; 
 struct xfrm_offload* FUNC12 (struct sk_buff*) ; 

int FUNC13(struct sk_buff *skb, int err)
{
	struct xfrm_state *x = FUNC11(skb);
	struct xfrm_offload *xo = FUNC12(skb);
	struct crypto_aead *aead = x->data;
	int hlen = sizeof(struct ip_esp_hdr) + FUNC1(aead);
	int hdr_len = FUNC5(skb);

	if (!xo || (xo && !(xo->flags & CRYPTO_DONE)))
		FUNC3(FUNC0(skb)->tmp);

	if (FUNC10(err))
		goto out;

	err = FUNC2(skb);
	if (FUNC10(err < 0))
		goto out;

	FUNC6(skb, FUNC4(skb),
			   FUNC5(skb));
	FUNC7(skb, hlen);
	if (x->props.mode == XFRM_MODE_TUNNEL)
		FUNC8(skb);
	else
		FUNC9(skb, -hdr_len);

	/* RFC4303: Drop dummy packets without any error */
	if (err == IPPROTO_NONE)
		err = -EINVAL;

out:
	return err;
}