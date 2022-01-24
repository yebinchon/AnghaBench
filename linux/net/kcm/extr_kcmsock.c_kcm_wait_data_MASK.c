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
struct sock {scalar_t__ sk_err; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int MSG_DONTWAIT ; 
 int /*<<< orphan*/  SOCK_DONE ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,long*,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC5 (long) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct sock *sk, int flags,
				     long timeo, int *err)
{
	struct sk_buff *skb;

	while (!(skb = FUNC2(&sk->sk_receive_queue))) {
		if (sk->sk_err) {
			*err = FUNC3(sk);
			return NULL;
		}

		if (FUNC4(sk, SOCK_DONE))
			return NULL;

		if ((flags & MSG_DONTWAIT) || !timeo) {
			*err = -EAGAIN;
			return NULL;
		}

		FUNC1(sk, &timeo, NULL);

		/* Handle signals */
		if (FUNC0(current)) {
			*err = FUNC5(timeo);
			return NULL;
		}
	}

	return skb;
}