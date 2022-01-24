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
struct tls_sw_context_rx {int /*<<< orphan*/  strp; int /*<<< orphan*/  saved_data_ready; } ;
struct tls_context {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/  sk_data_ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tls_data_ready ; 
 struct tls_sw_context_rx* FUNC1 (struct tls_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct sock *sk, struct tls_context *tls_ctx)
{
	struct tls_sw_context_rx *rx_ctx = FUNC1(tls_ctx);

	FUNC2(&sk->sk_callback_lock);
	rx_ctx->saved_data_ready = sk->sk_data_ready;
	sk->sk_data_ready = tls_data_ready;
	FUNC3(&sk->sk_callback_lock);

	FUNC0(&rx_ctx->strp);
}