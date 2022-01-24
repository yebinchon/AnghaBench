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
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_err; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct rfcomm_session {int /*<<< orphan*/  state; struct socket* sock; } ;

/* Variables and functions */
 scalar_t__ BT_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct rfcomm_session* FUNC2 (struct rfcomm_session*,struct sk_buff*) ; 
 struct rfcomm_session* FUNC3 (struct rfcomm_session*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rfcomm_session *FUNC8(struct rfcomm_session *s)
{
	struct socket *sock = s->sock;
	struct sock *sk = sock->sk;
	struct sk_buff *skb;

	FUNC0("session %p state %ld qlen %d", s, s->state, FUNC7(&sk->sk_receive_queue));

	/* Get data directly from socket receive queue without copying it. */
	while ((skb = FUNC4(&sk->sk_receive_queue))) {
		FUNC6(skb);
		if (!FUNC5(skb)) {
			s = FUNC2(s, skb);
			if (!s)
				break;
		} else {
			FUNC1(skb);
		}
	}

	if (s && (sk->sk_state == BT_CLOSED))
		s = FUNC3(s, sk->sk_err);

	return s;
}