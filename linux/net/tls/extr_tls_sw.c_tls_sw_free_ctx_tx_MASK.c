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
struct tls_sw_context_tx {int dummy; } ;
struct tls_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tls_sw_context_tx*) ; 
 struct tls_sw_context_tx* FUNC1 (struct tls_context*) ; 

void FUNC2(struct tls_context *tls_ctx)
{
	struct tls_sw_context_tx *ctx = FUNC1(tls_ctx);

	FUNC0(ctx);
}