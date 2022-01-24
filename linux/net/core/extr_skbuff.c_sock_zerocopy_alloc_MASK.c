#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/ * user; } ;
struct ubuf_info {int len; size_t bytelen; int zerocopy; int /*<<< orphan*/  refcnt; scalar_t__ id; int /*<<< orphan*/  callback; TYPE_1__ mmp; } ;
struct sock {int /*<<< orphan*/  sk_zckey; } ;
struct sk_buff {scalar_t__ cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 struct sk_buff* FUNC8 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sock_zerocopy_callback ; 

struct ubuf_info *FUNC9(struct sock *sk, size_t size)
{
	struct ubuf_info *uarg;
	struct sk_buff *skb;

	FUNC1(!FUNC3());

	skb = FUNC8(sk, 0, GFP_KERNEL);
	if (!skb)
		return NULL;

	FUNC0(sizeof(*uarg) > sizeof(skb->cb));
	uarg = (void *)skb->cb;
	uarg->mmp.user = NULL;

	if (FUNC5(&uarg->mmp, size)) {
		FUNC4(skb);
		return NULL;
	}

	uarg->callback = sock_zerocopy_callback;
	uarg->id = ((u32)FUNC2(&sk->sk_zckey)) - 1;
	uarg->len = 1;
	uarg->bytelen = size;
	uarg->zerocopy = 1;
	FUNC6(&uarg->refcnt, 1);
	FUNC7(sk);

	return uarg;
}