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
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_err; int /*<<< orphan*/  sk_write_queue; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bnep_session {TYPE_1__* sock; int /*<<< orphan*/  terminate; struct net_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  file; struct sock* sk; } ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EUNATCH ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (struct bnep_session*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bnep_session*,struct sk_buff*) ; 
 int /*<<< orphan*/  bnep_session_sem ; 
 scalar_t__ FUNC6 (struct bnep_session*,struct sk_buff*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 struct sk_buff* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  woken_wake_function ; 

__attribute__((used)) static int FUNC23(void *arg)
{
	struct bnep_session *s = arg;
	struct net_device *dev = s->dev;
	struct sock *sk = s->sock->sk;
	struct sk_buff *skb;
	FUNC1(wait, woken_wake_function);

	FUNC0("");

	FUNC14(current, -15);

	FUNC3(FUNC15(sk), &wait);
	while (1) {
		if (FUNC4(&s->terminate))
			break;
		/* RX */
		while ((skb = FUNC16(&sk->sk_receive_queue))) {
			FUNC18(skb);
			if (!FUNC17(skb))
				FUNC5(s, skb);
			else
				FUNC10(skb);
		}

		if (sk->sk_state != BT_CONNECTED)
			break;

		/* TX */
		while ((skb = FUNC16(&sk->sk_write_queue)))
			if (FUNC6(s, skb))
				break;
		FUNC12(dev);

		/*
		 * wait_woken() performs the necessary memory barriers
		 * for us; see the header comment for this primitive.
		 */
		FUNC21(&wait, TASK_INTERRUPTIBLE, MAX_SCHEDULE_TIMEOUT);
	}
	FUNC13(FUNC15(sk), &wait);

	/* Cleanup session */
	FUNC7(&bnep_session_sem);

	/* Delete network device */
	FUNC19(dev);

	/* Wakeup user-space polling for socket errors */
	s->sock->sk->sk_err = EUNATCH;

	FUNC22(FUNC15(s->sock->sk));

	/* Release the socket */
	FUNC8(s->sock->file);

	FUNC2(s);

	FUNC20(&bnep_session_sem);
	FUNC9(dev);
	FUNC11(0);
	return 0;
}