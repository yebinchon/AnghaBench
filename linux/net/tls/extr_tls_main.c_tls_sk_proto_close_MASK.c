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
struct tls_context {scalar_t__ tx_conf; scalar_t__ rx_conf; scalar_t__ sk_write_space; TYPE_1__* sk_proto; } ;
struct sock {scalar_t__ sk_write_space; int /*<<< orphan*/  sk_callback_lock; TYPE_1__* sk_prot; } ;
struct inet_connection_sock {int /*<<< orphan*/  icsk_ulp_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct sock*,long) ;} ;

/* Variables and functions */
 scalar_t__ TLS_BASE ; 
 scalar_t__ TLS_HW ; 
 scalar_t__ TLS_SW ; 
 struct inet_connection_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 long FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,long) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct tls_context*) ; 
 struct tls_context* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct tls_context*,long) ; 
 int /*<<< orphan*/  FUNC9 (struct tls_context*) ; 
 int /*<<< orphan*/  FUNC10 (struct tls_context*) ; 
 int /*<<< orphan*/  FUNC11 (struct tls_context*) ; 
 int /*<<< orphan*/  FUNC12 (struct tls_context*) ; 
 scalar_t__ tls_write_space ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct sock *sk, long timeout)
{
	struct inet_connection_sock *icsk = FUNC0(sk);
	struct tls_context *ctx = FUNC7(sk);
	long timeo = FUNC4(sk, 0);
	bool free_ctx;

	if (ctx->tx_conf == TLS_SW)
		FUNC9(ctx);

	FUNC1(sk);
	free_ctx = ctx->tx_conf != TLS_HW && ctx->rx_conf != TLS_HW;

	if (ctx->tx_conf != TLS_BASE || ctx->rx_conf != TLS_BASE)
		FUNC8(sk, ctx, timeo);

	FUNC13(&sk->sk_callback_lock);
	if (free_ctx)
		FUNC2(icsk->icsk_ulp_data, NULL);
	sk->sk_prot = ctx->sk_proto;
	if (sk->sk_write_space == tls_write_space)
		sk->sk_write_space = ctx->sk_write_space;
	FUNC14(&sk->sk_callback_lock);
	FUNC3(sk);
	if (ctx->tx_conf == TLS_SW)
		FUNC11(ctx);
	if (ctx->rx_conf == TLS_SW || ctx->rx_conf == TLS_HW)
		FUNC12(ctx);
	if (ctx->rx_conf == TLS_SW)
		FUNC10(ctx);
	ctx->sk_proto->close(sk, timeout);

	if (free_ctx)
		FUNC6(sk, ctx);
}