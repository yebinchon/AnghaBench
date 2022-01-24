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
struct intel_sst_drv {int /*<<< orphan*/  post_msg_wq; int /*<<< orphan*/  wait_queue; int /*<<< orphan*/  ipc_post_msg_wq; int /*<<< orphan*/  block_list; int /*<<< orphan*/  ipc_dispatch_list; int /*<<< orphan*/  rx_list; int /*<<< orphan*/  memcpy_list; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sst_process_pending_msg ; 

__attribute__((used)) static int FUNC4(struct intel_sst_drv *ctx)
{
	FUNC0(&ctx->memcpy_list);
	FUNC0(&ctx->rx_list);
	FUNC0(&ctx->ipc_dispatch_list);
	FUNC0(&ctx->block_list);
	FUNC1(&ctx->ipc_post_msg_wq, sst_process_pending_msg);
	FUNC3(&ctx->wait_queue);

	ctx->post_msg_wq =
		FUNC2("sst_post_msg_wq");
	if (!ctx->post_msg_wq)
		return -EBUSY;
	return 0;
}