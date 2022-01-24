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
struct sock {scalar_t__ sk_state; int sk_shutdown; int /*<<< orphan*/  sk_drops; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct iucv_sock {TYPE_1__ message_q; int /*<<< orphan*/  backlog_skb_q; } ;
struct af_iucv_trans_hdr {int dummy; } ;
struct TYPE_4__ {scalar_t__ offset; } ;

/* Variables and functions */
 scalar_t__ IUCV_CONNECTED ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int NET_RX_SUCCESS ; 
 int RCV_SHUTDOWN ; 
 scalar_t__ FUNC1 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct iucv_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct sock *sk, struct sk_buff *skb)
{
	struct iucv_sock *iucv = FUNC3(sk);

	if (!iucv) {
		FUNC4(skb);
		return NET_RX_SUCCESS;
	}

	if (sk->sk_state != IUCV_CONNECTED) {
		FUNC4(skb);
		return NET_RX_SUCCESS;
	}

	if (sk->sk_shutdown & RCV_SHUTDOWN) {
		FUNC4(skb);
		return NET_RX_SUCCESS;
	}

	/* write stuff from iucv_msg to skb cb */
	FUNC6(skb, sizeof(struct af_iucv_trans_hdr));
	FUNC10(skb);
	FUNC9(skb);
	FUNC0(skb)->offset = 0;
	if (FUNC5(sk, skb)) {
		FUNC2(&sk->sk_drops);	/* skb rejected by filter */
		FUNC4(skb);
		return NET_RX_SUCCESS;
	}

	FUNC11(&iucv->message_q.lock);
	if (FUNC7(&iucv->backlog_skb_q)) {
		if (FUNC1(sk, skb))
			/* handle rcv queue full */
			FUNC8(&iucv->backlog_skb_q, skb);
	} else
		FUNC8(&FUNC3(sk)->backlog_skb_q, skb);
	FUNC12(&iucv->message_q.lock);
	return NET_RX_SUCCESS;
}