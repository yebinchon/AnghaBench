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
typedef  int /*<<< orphan*/  x_recv ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct ccid3_hc_rx_sock {int /*<<< orphan*/  rx_pinv; int /*<<< orphan*/  rx_x_recv; } ;
typedef  int /*<<< orphan*/  pinv ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ DCCP_OPEN ; 
 scalar_t__ DCCP_PARTOPEN ; 
 int /*<<< orphan*/  TFRC_OPT_LOSS_EVENT_RATE ; 
 int /*<<< orphan*/  TFRC_OPT_RECEIVE_RATE ; 
 struct ccid3_hc_rx_sock* FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, struct sk_buff *skb)
{
	const struct ccid3_hc_rx_sock *hc = FUNC0(sk);
	__be32 x_recv, pinv;

	if (!(sk->sk_state == DCCP_OPEN || sk->sk_state == DCCP_PARTOPEN))
		return 0;

	if (FUNC2(skb))
		return 0;

	x_recv = FUNC3(hc->rx_x_recv);
	pinv   = FUNC3(hc->rx_pinv);

	if (FUNC1(skb, TFRC_OPT_LOSS_EVENT_RATE,
			       &pinv, sizeof(pinv)) ||
	    FUNC1(skb, TFRC_OPT_RECEIVE_RATE,
			       &x_recv, sizeof(x_recv)))
		return -1;

	return 0;
}