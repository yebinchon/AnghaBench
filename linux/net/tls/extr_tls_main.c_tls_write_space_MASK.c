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
struct tls_context {scalar_t__ tx_conf; int /*<<< orphan*/  (* sk_write_space ) (struct sock*) ;scalar_t__ in_tcp_sendpages; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 scalar_t__ TLS_HW ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct tls_context*) ; 
 struct tls_context* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct tls_context*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	struct tls_context *ctx = FUNC3(sk);

	/* If in_tcp_sendpages call lower protocol write space handler
	 * to ensure we wake up any waiting operations there. For example
	 * if do_tcp_sendpages where to call sk_wait_event.
	 */
	if (ctx->in_tcp_sendpages) {
		ctx->sk_write_space(sk);
		return;
	}

#ifdef CONFIG_TLS_DEVICE
	if (ctx->tx_conf == TLS_HW)
		tls_device_write_space(sk, ctx);
	else
#endif
		FUNC4(sk, ctx);

	ctx->sk_write_space(sk);
}