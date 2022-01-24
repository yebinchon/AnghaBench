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
struct tls_context {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  crypto_recv; int /*<<< orphan*/  crypto_send; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tls_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct tls_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu ; 

void FUNC4(struct sock *sk, struct tls_context *ctx)
{
	if (!ctx)
		return;

	FUNC2(&ctx->crypto_send, sizeof(ctx->crypto_send));
	FUNC2(&ctx->crypto_recv, sizeof(ctx->crypto_recv));
	FUNC3(&ctx->tx_lock);

	if (sk)
		FUNC1(ctx, rcu);
	else
		FUNC0(ctx);
}