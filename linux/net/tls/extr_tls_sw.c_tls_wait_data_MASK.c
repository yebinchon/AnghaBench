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
struct tls_sw_context_rx {struct sk_buff* recv_pkt; } ;
struct tls_context {int dummy; } ;
struct sock {int sk_shutdown; scalar_t__ sk_err; } ;
struct sk_psock {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int MSG_DONTWAIT ; 
 int RCV_SHUTDOWN ; 
 int /*<<< orphan*/  SOCKWQ_ASYNC_WAITDATA ; 
 int /*<<< orphan*/  SOCK_DONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sock*) ; 
 scalar_t__ FUNC5 (struct sk_psock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,long*,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct sock*) ; 
 scalar_t__ FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC11 (long) ; 
 struct tls_context* FUNC12 (struct sock*) ; 
 struct tls_sw_context_rx* FUNC13 (struct tls_context*) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  woken_wake_function ; 

__attribute__((used)) static struct sk_buff *FUNC14(struct sock *sk, struct sk_psock *psock,
				     int flags, long timeo, int *err)
{
	struct tls_context *tls_ctx = FUNC12(sk);
	struct tls_sw_context_rx *ctx = FUNC13(tls_ctx);
	struct sk_buff *skb;
	FUNC0(wait, woken_wake_function);

	while (!(skb = ctx->recv_pkt) && FUNC5(psock)) {
		if (sk->sk_err) {
			*err = FUNC9(sk);
			return NULL;
		}

		if (sk->sk_shutdown & RCV_SHUTDOWN)
			return NULL;

		if (FUNC10(sk, SOCK_DONE))
			return NULL;

		if ((flags & MSG_DONTWAIT) || !timeo) {
			*err = -EAGAIN;
			return NULL;
		}

		FUNC1(FUNC7(sk), &wait);
		FUNC6(SOCKWQ_ASYNC_WAITDATA, sk);
		FUNC8(sk, &timeo,
			      ctx->recv_pkt != skb ||
			      !FUNC5(psock),
			      &wait);
		FUNC4(SOCKWQ_ASYNC_WAITDATA, sk);
		FUNC2(FUNC7(sk), &wait);

		/* Handle signals */
		if (FUNC3(current)) {
			*err = FUNC11(timeo);
			return NULL;
		}
	}

	return skb;
}