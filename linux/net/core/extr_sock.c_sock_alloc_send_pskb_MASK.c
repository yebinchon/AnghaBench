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
struct sock {int sk_shutdown; int /*<<< orphan*/  sk_allocation; TYPE_1__* sk_socket; int /*<<< orphan*/  sk_sndbuf; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EPIPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCKWQ_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 struct sk_buff* FUNC1 (unsigned long,unsigned long,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sock*) ; 
 scalar_t__ FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct sock*) ; 
 int FUNC7 (struct sock*) ; 
 int FUNC8 (long) ; 
 long FUNC9 (struct sock*,int) ; 
 long FUNC10 (struct sock*,long) ; 

struct sk_buff *FUNC11(struct sock *sk, unsigned long header_len,
				     unsigned long data_len, int noblock,
				     int *errcode, int max_page_order)
{
	struct sk_buff *skb;
	long timeo;
	int err;

	timeo = FUNC9(sk, noblock);
	for (;;) {
		err = FUNC7(sk);
		if (err != 0)
			goto failure;

		err = -EPIPE;
		if (sk->sk_shutdown & SEND_SHUTDOWN)
			goto failure;

		if (FUNC5(sk) < FUNC0(sk->sk_sndbuf))
			break;

		FUNC4(SOCKWQ_ASYNC_NOSPACE, sk);
		FUNC2(SOCK_NOSPACE, &sk->sk_socket->flags);
		err = -EAGAIN;
		if (!timeo)
			goto failure;
		if (FUNC3(current))
			goto interrupted;
		timeo = FUNC10(sk, timeo);
	}
	skb = FUNC1(header_len, data_len, max_page_order,
				   errcode, sk->sk_allocation);
	if (skb)
		FUNC6(skb, sk);
	return skb;

interrupted:
	err = FUNC8(timeo);
failure:
	*errcode = err;
	return NULL;
}