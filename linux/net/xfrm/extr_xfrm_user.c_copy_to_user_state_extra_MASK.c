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
struct xfrm_usersa_info {int dummy; } ;
struct TYPE_4__ {scalar_t__ dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  smark; scalar_t__ extra_flags; } ;
struct xfrm_state {scalar_t__ security; scalar_t__ if_id; TYPE_2__ xso; int /*<<< orphan*/  replay; int /*<<< orphan*/ * replay_esn; TYPE_1__ props; int /*<<< orphan*/  mark; scalar_t__ tfcpad; int /*<<< orphan*/ * encap; int /*<<< orphan*/ * calg; int /*<<< orphan*/ * ealg; int /*<<< orphan*/ * aalg; int /*<<< orphan*/ * aead; scalar_t__ lastused; int /*<<< orphan*/ * coaddr; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFRMA_ALG_AEAD ; 
 int /*<<< orphan*/  XFRMA_ALG_AUTH_TRUNC ; 
 int /*<<< orphan*/  XFRMA_ALG_COMP ; 
 int /*<<< orphan*/  XFRMA_ALG_CRYPT ; 
 int /*<<< orphan*/  XFRMA_COADDR ; 
 int /*<<< orphan*/  XFRMA_ENCAP ; 
 int /*<<< orphan*/  XFRMA_IF_ID ; 
 int /*<<< orphan*/  XFRMA_LASTUSED ; 
 int /*<<< orphan*/  XFRMA_PAD ; 
 int /*<<< orphan*/  XFRMA_REPLAY_ESN_VAL ; 
 int /*<<< orphan*/  XFRMA_REPLAY_VAL ; 
 int /*<<< orphan*/  XFRMA_SA_EXTRA_FLAGS ; 
 int /*<<< orphan*/  XFRMA_TFCPAD ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__,struct sk_buff*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_state*,struct xfrm_usersa_info*) ; 
 int FUNC4 (TYPE_2__*,struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct xfrm_state *x,
				    struct xfrm_usersa_info *p,
				    struct sk_buff *skb)
{
	int ret = 0;

	FUNC3(x, p);

	if (x->props.extra_flags) {
		ret = FUNC6(skb, XFRMA_SA_EXTRA_FLAGS,
				  x->props.extra_flags);
		if (ret)
			goto out;
	}

	if (x->coaddr) {
		ret = FUNC5(skb, XFRMA_COADDR, sizeof(*x->coaddr), x->coaddr);
		if (ret)
			goto out;
	}
	if (x->lastused) {
		ret = FUNC7(skb, XFRMA_LASTUSED, x->lastused,
					XFRMA_PAD);
		if (ret)
			goto out;
	}
	if (x->aead) {
		ret = FUNC5(skb, XFRMA_ALG_AEAD, FUNC0(x->aead), x->aead);
		if (ret)
			goto out;
	}
	if (x->aalg) {
		ret = FUNC2(x->aalg, skb);
		if (!ret)
			ret = FUNC5(skb, XFRMA_ALG_AUTH_TRUNC,
				      FUNC8(x->aalg), x->aalg);
		if (ret)
			goto out;
	}
	if (x->ealg) {
		ret = FUNC5(skb, XFRMA_ALG_CRYPT, FUNC9(x->ealg), x->ealg);
		if (ret)
			goto out;
	}
	if (x->calg) {
		ret = FUNC5(skb, XFRMA_ALG_COMP, sizeof(*(x->calg)), x->calg);
		if (ret)
			goto out;
	}
	if (x->encap) {
		ret = FUNC5(skb, XFRMA_ENCAP, sizeof(*x->encap), x->encap);
		if (ret)
			goto out;
	}
	if (x->tfcpad) {
		ret = FUNC6(skb, XFRMA_TFCPAD, x->tfcpad);
		if (ret)
			goto out;
	}
	ret = FUNC10(skb, &x->mark);
	if (ret)
		goto out;

	ret = FUNC12(skb, &x->props.smark);
	if (ret)
		goto out;

	if (x->replay_esn)
		ret = FUNC5(skb, XFRMA_REPLAY_ESN_VAL,
			      FUNC11(x->replay_esn),
			      x->replay_esn);
	else
		ret = FUNC5(skb, XFRMA_REPLAY_VAL, sizeof(x->replay),
			      &x->replay);
	if (ret)
		goto out;
	if(x->xso.dev)
		ret = FUNC4(&x->xso, skb);
	if (ret)
		goto out;
	if (x->if_id) {
		ret = FUNC6(skb, XFRMA_IF_ID, x->if_id);
		if (ret)
			goto out;
	}
	if (x->security)
		ret = FUNC1(x->security, skb);
out:
	return ret;
}