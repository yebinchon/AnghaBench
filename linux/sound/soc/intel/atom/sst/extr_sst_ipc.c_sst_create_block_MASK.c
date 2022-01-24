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
typedef  void* u32 ;
struct sst_block {int condition; int on; int /*<<< orphan*/  node; void* drv_id; void* msg_id; } ;
struct intel_sst_drv {int /*<<< orphan*/  block_lock; int /*<<< orphan*/  block_list; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct sst_block* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct sst_block *FUNC5(struct intel_sst_drv *ctx,
					u32 msg_id, u32 drv_id)
{
	struct sst_block *msg = NULL;

	FUNC0(ctx->dev, "Enter\n");
	msg = FUNC1(sizeof(*msg), GFP_KERNEL);
	if (!msg)
		return NULL;
	msg->condition = false;
	msg->on = true;
	msg->msg_id = msg_id;
	msg->drv_id = drv_id;
	FUNC3(&ctx->block_lock);
	FUNC2(&msg->node, &ctx->block_list);
	FUNC4(&ctx->block_lock);

	return msg;
}