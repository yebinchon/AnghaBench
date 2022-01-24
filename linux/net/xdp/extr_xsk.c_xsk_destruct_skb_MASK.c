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
typedef  int /*<<< orphan*/  u64 ;
struct xdp_sock {int /*<<< orphan*/  tx_completion_lock; TYPE_1__* umem; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct TYPE_4__ {scalar_t__ destructor_arg; } ;
struct TYPE_3__ {int /*<<< orphan*/  cq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct xdp_sock* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sk_buff *skb)
{
	u64 addr = (u64)(long)FUNC1(skb)->destructor_arg;
	struct xdp_sock *xs = FUNC5(skb->sk);
	unsigned long flags;

	FUNC3(&xs->tx_completion_lock, flags);
	FUNC0(FUNC6(xs->umem->cq, addr));
	FUNC4(&xs->tx_completion_lock, flags);

	FUNC2(skb);
}