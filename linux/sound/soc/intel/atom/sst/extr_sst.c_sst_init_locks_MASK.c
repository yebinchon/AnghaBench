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
struct intel_sst_drv {int /*<<< orphan*/  block_lock; int /*<<< orphan*/  ipc_spin_lock; int /*<<< orphan*/  rx_msg_lock; int /*<<< orphan*/  sst_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct intel_sst_drv *ctx)
{
	FUNC0(&ctx->sst_lock);
	FUNC1(&ctx->rx_msg_lock);
	FUNC1(&ctx->ipc_spin_lock);
	FUNC1(&ctx->block_lock);
}