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
struct TYPE_2__ {int /*<<< orphan*/  iv; int /*<<< orphan*/  rec_seq; } ;
struct tls_context {scalar_t__ tx_conf; scalar_t__ rx_conf; TYPE_1__ tx; } ;
struct sock {int /*<<< orphan*/  sk_write_pending; } ;

/* Variables and functions */
 scalar_t__ TLS_HW ; 
 scalar_t__ TLS_SW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,long*) ; 

__attribute__((used)) static void FUNC8(struct sock *sk,
				 struct tls_context *ctx, long timeo)
{
	if (FUNC6(sk->sk_write_pending) &&
	    !FUNC7(sk, &timeo))
		FUNC3(sk, 0);

	/* We need these for tls_sw_fallback handling of other packets */
	if (ctx->tx_conf == TLS_SW) {
		FUNC0(ctx->tx.rec_seq);
		FUNC0(ctx->tx.iv);
		FUNC5(sk);
	} else if (ctx->tx_conf == TLS_HW) {
		FUNC1(sk);
	}

	if (ctx->rx_conf == TLS_SW)
		FUNC4(sk);
	else if (ctx->rx_conf == TLS_HW)
		FUNC2(sk);
}