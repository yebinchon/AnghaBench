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
struct xfrm_state {int dummy; } ;
struct xfrm_offload {int flags; } ;
struct sk_buff {scalar_t__ data; } ;
struct sec_path {int len; struct xfrm_state** xvec; } ;
struct crypto_async_request {struct sk_buff* data; } ;
struct TYPE_4__ {void* tmp; } ;
struct TYPE_3__ {struct xfrm_state* xfrm; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMOUTSTATEPROTOERROR ; 
 int XFRM_DEV_RESUME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_state*,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 TYPE_1__* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 
 struct sec_path* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 struct xfrm_offload* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct xfrm_state*) ; 

__attribute__((used)) static void FUNC14(struct crypto_async_request *base, int err)
{
	struct sk_buff *skb = base->data;
	struct xfrm_offload *xo = FUNC11(skb);
	void *tmp;
	struct xfrm_state *x;

	if (xo && (xo->flags & XFRM_DEV_RESUME)) {
		struct sec_path *sp = FUNC9(skb);

		x = sp->xvec[sp->len - 1];
	} else {
		x = FUNC6(skb)->xfrm;
	}

	tmp = FUNC0(skb)->tmp;
	FUNC2(x, tmp);
	FUNC3(tmp);

	if (xo && (xo->flags & XFRM_DEV_RESUME)) {
		if (err) {
			FUNC1(FUNC13(x), LINUX_MIB_XFRMOUTSTATEPROTOERROR);
			FUNC4(skb);
			return;
		}

		FUNC8(skb, skb->data - FUNC7(skb));
		FUNC5(skb);
		FUNC10(skb);
	} else {
		FUNC12(skb, err);
	}
}