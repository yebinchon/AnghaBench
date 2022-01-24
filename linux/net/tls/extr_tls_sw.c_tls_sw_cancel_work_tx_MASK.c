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
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct tls_sw_context_tx {TYPE_1__ tx_work; int /*<<< orphan*/  tx_bitmask; } ;
struct tls_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_TX_CLOSING ; 
 int /*<<< orphan*/  BIT_TX_SCHEDULED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tls_sw_context_tx* FUNC2 (struct tls_context*) ; 

void FUNC3(struct tls_context *tls_ctx)
{
	struct tls_sw_context_tx *ctx = FUNC2(tls_ctx);

	FUNC1(BIT_TX_CLOSING, &ctx->tx_bitmask);
	FUNC1(BIT_TX_SCHEDULED, &ctx->tx_bitmask);
	FUNC0(&ctx->tx_work.work);
}