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
struct tls_context {void* rx_conf; void* tx_conf; } ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_callback_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOTSUPP ; 
 scalar_t__ TCP_ESTABLISHED ; 
 void* TLS_BASE ; 
 struct tls_context* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct tls_context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct sock *sk)
{
	struct tls_context *ctx;
	int rc = 0;

	if (FUNC2(sk))
		return 0;

	/* The TLS ulp is currently supported only for TCP sockets
	 * in ESTABLISHED state.
	 * Supporting sockets in LISTEN state will require us
	 * to modify the accept implementation to clone rather then
	 * share the ulp context.
	 */
	if (sk->sk_state != TCP_ESTABLISHED)
		return -ENOTSUPP;

	FUNC1(sk);

	/* allocate tls context */
	FUNC4(&sk->sk_callback_lock);
	ctx = FUNC0(sk);
	if (!ctx) {
		rc = -ENOMEM;
		goto out;
	}

	ctx->tx_conf = TLS_BASE;
	ctx->rx_conf = TLS_BASE;
	FUNC3(sk, ctx);
out:
	FUNC5(&sk->sk_callback_lock);
	return rc;
}