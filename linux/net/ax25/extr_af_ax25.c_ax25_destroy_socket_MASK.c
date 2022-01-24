#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_write_queue; int /*<<< orphan*/  sk_state; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {struct sock* sk; } ;
struct TYPE_16__ {scalar_t__ expires; } ;
struct TYPE_15__ {struct sock* sk; TYPE_2__ dtimer; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ ax25_cb ;

/* Variables and functions */
 int /*<<< orphan*/  AX25_STATE_0 ; 
 int HZ ; 
 int /*<<< orphan*/  TCP_LISTEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  ax25_destroy_timer ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sock*) ; 
 TYPE_1__* FUNC12 (struct sock*) ; 
 struct sk_buff* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC18(ax25_cb *ax25)
{
	struct sk_buff *skb;

	FUNC1(ax25);

	FUNC5(ax25);
	FUNC7(ax25);
	FUNC8(ax25);
	FUNC9(ax25);
	FUNC6(ax25);

	FUNC3(ax25);	/* Flush the queues */

	if (ax25->sk != NULL) {
		while ((skb = FUNC13(&ax25->sk->sk_receive_queue)) != NULL) {
			if (skb->sk != ax25->sk) {
				/* A pending connection */
				ax25_cb *sax25 = FUNC12(skb->sk);

				/* Queue the unaccepted socket for death */
				FUNC15(skb->sk);

				/* 9A4GL: hack to release unaccepted sockets */
				skb->sk->sk_state = TCP_LISTEN;

				FUNC4(sax25);
				sax25->state = AX25_STATE_0;
			}

			FUNC10(skb);
		}
		FUNC14(&ax25->sk->sk_write_queue);
	}

	if (ax25->sk != NULL) {
		if (FUNC11(ax25->sk)) {
			/* Defer: outstanding buffers */
			FUNC17(&ax25->dtimer, ax25_destroy_timer, 0);
			ax25->dtimer.expires  = jiffies + 2 * HZ;
			FUNC0(&ax25->dtimer);
		} else {
			struct sock *sk=ax25->sk;
			ax25->sk=NULL;
			FUNC16(sk);
		}
	} else {
		FUNC2(ax25);
	}
}