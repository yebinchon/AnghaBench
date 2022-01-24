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

/* Variables and functions */
 scalar_t__ TLS_HW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tls_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct tls_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct tls_context*) ; 

__attribute__((used)) static void FUNC4(struct tls_context *ctx)
{
	if (ctx->tx_conf == TLS_HW) {
		FUNC0(FUNC3(ctx));
		FUNC0(ctx->tx.rec_seq);
		FUNC0(ctx->tx.iv);
	}

	if (ctx->rx_conf == TLS_HW)
		FUNC0(FUNC2(ctx));

	FUNC1(NULL, ctx);
}