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
struct TYPE_2__ {int /*<<< orphan*/  ee_origin; int /*<<< orphan*/  ee_errno; } ;
struct sock_exterr_skb {TYPE_1__ ee; } ;
struct sock {int /*<<< orphan*/  sk_refcnt; } ;
struct sk_buff {int wifi_acked_valid; int wifi_acked; struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMSG ; 
 struct sock_exterr_skb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  SO_EE_ORIGIN_TXSTATUS ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock_exterr_skb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int FUNC6 (struct sock*,struct sk_buff*) ; 

void FUNC7(struct sk_buff *skb, bool acked)
{
	struct sock *sk = skb->sk;
	struct sock_exterr_skb *serr;
	int err = 1;

	skb->wifi_acked_valid = 1;
	skb->wifi_acked = acked;

	serr = FUNC0(skb);
	FUNC3(serr, 0, sizeof(*serr));
	serr->ee.ee_errno = ENOMSG;
	serr->ee.ee_origin = SO_EE_ORIGIN_TXSTATUS;

	/* Take a reference to prevent skb_orphan() from freeing the socket,
	 * but only if the socket refcount is not zero.
	 */
	if (FUNC2(FUNC4(&sk->sk_refcnt))) {
		err = FUNC6(sk, skb);
		FUNC5(sk);
	}
	if (err)
		FUNC1(skb);
}