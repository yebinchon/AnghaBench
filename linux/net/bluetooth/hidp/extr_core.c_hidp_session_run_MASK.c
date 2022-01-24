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
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct hidp_session {int /*<<< orphan*/  terminate; TYPE_1__* ctrl_sock; int /*<<< orphan*/  ctrl_transmit; TYPE_1__* intr_sock; int /*<<< orphan*/  intr_transmit; } ;
struct TYPE_2__ {struct sock* sk; } ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hidp_session*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct hidp_session*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct hidp_session*,struct sk_buff*) ; 
 int /*<<< orphan*/  hidp_session_wq ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  woken_wake_function ; 

__attribute__((used)) static void FUNC13(struct hidp_session *session)
{
	struct sock *ctrl_sk = session->ctrl_sock->sk;
	struct sock *intr_sk = session->intr_sock->sk;
	struct sk_buff *skb;
	FUNC0(wait, woken_wake_function);

	FUNC1(&hidp_session_wq, &wait);
	for (;;) {
		/*
		 * This thread can be woken up two ways:
		 *  - You call hidp_session_terminate() which sets the
		 *    session->terminate flag and wakes this thread up.
		 *  - Via modifying the socket state of ctrl/intr_sock. This
		 *    thread is woken up by ->sk_state_changed().
		 */

		if (FUNC3(&session->terminate))
			break;

		if (ctrl_sk->sk_state != BT_CONNECTED ||
		    intr_sk->sk_state != BT_CONNECTED)
			break;

		/* parse incoming intr-skbs */
		while ((skb = FUNC9(&intr_sk->sk_receive_queue))) {
			FUNC11(skb);
			if (!FUNC10(skb))
				FUNC6(session, skb);
			else
				FUNC7(skb);
		}

		/* send pending intr-skbs */
		FUNC4(session, &session->intr_transmit,
				      session->intr_sock);

		/* parse incoming ctrl-skbs */
		while ((skb = FUNC9(&ctrl_sk->sk_receive_queue))) {
			FUNC11(skb);
			if (!FUNC10(skb))
				FUNC5(session, skb);
			else
				FUNC7(skb);
		}

		/* send pending ctrl-skbs */
		FUNC4(session, &session->ctrl_transmit,
				      session->ctrl_sock);

		/*
		 * wait_woken() performs the necessary memory barriers
		 * for us; see the header comment for this primitive.
		 */
		FUNC12(&wait, TASK_INTERRUPTIBLE, MAX_SCHEDULE_TIMEOUT);
	}
	FUNC8(&hidp_session_wq, &wait);

	FUNC2(&session->terminate);
}