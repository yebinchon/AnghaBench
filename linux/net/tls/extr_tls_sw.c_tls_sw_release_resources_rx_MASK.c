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
struct tls_sw_context_rx {scalar_t__ saved_data_ready; int /*<<< orphan*/  strp; scalar_t__ aead_recv; int /*<<< orphan*/  rx_list; int /*<<< orphan*/ * recv_pkt; } ;
struct TYPE_2__ {int /*<<< orphan*/  iv; int /*<<< orphan*/  rec_seq; } ;
struct tls_context {TYPE_1__ rx; } ;
struct sock {int /*<<< orphan*/  sk_callback_lock; scalar_t__ sk_data_ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tls_context* FUNC5 (struct sock*) ; 
 struct tls_sw_context_rx* FUNC6 (struct tls_context*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct sock *sk)
{
	struct tls_context *tls_ctx = FUNC5(sk);
	struct tls_sw_context_rx *ctx = FUNC6(tls_ctx);

	FUNC1(tls_ctx->rx.rec_seq);
	FUNC1(tls_ctx->rx.iv);

	if (ctx->aead_recv) {
		FUNC2(ctx->recv_pkt);
		ctx->recv_pkt = NULL;
		FUNC3(&ctx->rx_list);
		FUNC0(ctx->aead_recv);
		FUNC4(&ctx->strp);
		/* If tls_sw_strparser_arm() was not called (cleanup paths)
		 * we still want to strp_stop(), but sk->sk_data_ready was
		 * never swapped.
		 */
		if (ctx->saved_data_ready) {
			FUNC7(&sk->sk_callback_lock);
			sk->sk_data_ready = ctx->saved_data_ready;
			FUNC8(&sk->sk_callback_lock);
		}
	}
}