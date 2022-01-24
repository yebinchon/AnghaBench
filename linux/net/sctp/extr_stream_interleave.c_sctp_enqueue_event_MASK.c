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
struct sock {int sk_shutdown; int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sctp_ulpq {TYPE_2__* asoc; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_sock {int data_ready_signalled; } ;
struct TYPE_3__ {struct sock* sk; } ;
struct TYPE_4__ {int /*<<< orphan*/  subscribe; TYPE_1__ base; } ;

/* Variables and functions */
 int RCV_SHUTDOWN ; 
 int SEND_SHUTDOWN ; 
 struct sk_buff* FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*) ; 
 struct sctp_sock* FUNC3 (struct sock*) ; 
 struct sctp_ulpevent* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_ulpevent*) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_ulpevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_ulpevent*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 

__attribute__((used)) static int FUNC12(struct sctp_ulpq *ulpq,
			      struct sk_buff_head *skb_list)
{
	struct sock *sk = ulpq->asoc->base.sk;
	struct sctp_sock *sp = FUNC3(sk);
	struct sctp_ulpevent *event;
	struct sk_buff *skb;

	skb = FUNC0(skb_list);
	event = FUNC4(skb);

	if (sk->sk_shutdown & RCV_SHUTDOWN &&
	    (sk->sk_shutdown & SEND_SHUTDOWN ||
	     !FUNC7(event)))
		goto out_free;

	if (!FUNC7(event)) {
		FUNC9(sk, skb);
		FUNC8(sk);
	}

	if (!FUNC6(event, ulpq->asoc->subscribe))
		goto out_free;

	if (skb_list)
		FUNC10(skb_list,
					   &sk->sk_receive_queue);
	else
		FUNC1(&sk->sk_receive_queue, skb);

	if (!sp->data_ready_signalled) {
		sp->data_ready_signalled = 1;
		sk->sk_data_ready(sk);
	}

	return 1;

out_free:
	if (skb_list)
		FUNC2(skb_list);
	else
		FUNC5(event);

	return 0;
}