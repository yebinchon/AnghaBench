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
struct cmtp_session {int flags; TYPE_1__* sock; int /*<<< orphan*/  terminate; } ;
struct TYPE_2__ {int /*<<< orphan*/  file; struct sock* sk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC1 (char*,struct cmtp_session*) ; 
 int /*<<< orphan*/  CMTP_LOOPBACK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC3 (struct cmtp_session*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cmtp_session*) ; 
 int /*<<< orphan*/  FUNC7 (struct cmtp_session*) ; 
 int /*<<< orphan*/  FUNC8 (struct cmtp_session*,struct sk_buff*) ; 
 int /*<<< orphan*/  cmtp_session_sem ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cmtp_session*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 struct sk_buff* FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  woken_wake_function ; 

__attribute__((used)) static int FUNC22(void *arg)
{
	struct cmtp_session *session = arg;
	struct sock *sk = session->sock->sk;
	struct sk_buff *skb;
	FUNC2(wait, woken_wake_function);

	FUNC1("session %p", session);

	FUNC15(current, -15);

	FUNC4(FUNC16(sk), &wait);
	while (1) {
		if (FUNC5(&session->terminate))
			break;
		if (sk->sk_state != BT_CONNECTED)
			break;

		while ((skb = FUNC17(&sk->sk_receive_queue))) {
			FUNC19(skb);
			if (!FUNC18(skb))
				FUNC8(session, skb);
			else
				FUNC12(skb);
		}

		FUNC7(session);

		/*
		 * wait_woken() performs the necessary memory barriers
		 * for us; see the header comment for this primitive.
		 */
		FUNC21(&wait, TASK_INTERRUPTIBLE, MAX_SCHEDULE_TIMEOUT);
	}
	FUNC14(FUNC16(sk), &wait);

	FUNC9(&cmtp_session_sem);

	if (!(session->flags & FUNC0(CMTP_LOOPBACK)))
		FUNC6(session);

	FUNC10(session->sock->file);

	FUNC3(session);

	FUNC20(&cmtp_session_sem);

	FUNC11(session);
	FUNC13(0);
	return 0;
}