#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ list_len; int /*<<< orphan*/ * dst; int /*<<< orphan*/ * src; } ;
struct intel_sst_drv {int /*<<< orphan*/ * fw_in_mem; TYPE_1__ fw_sg_list; int /*<<< orphan*/  qos; int /*<<< orphan*/  post_msg_wq; TYPE_2__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  SST_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  sst_fw_version_attr_group ; 
 int /*<<< orphan*/  FUNC6 (struct intel_sst_drv*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_sst_drv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC10(struct intel_sst_drv *ctx)
{
	FUNC5(ctx->dev);
	FUNC4(ctx->dev);
	FUNC8(ctx->dev);
	FUNC7(ctx, SST_SHUTDOWN);
	FUNC9(&ctx->dev->kobj, &sst_fw_version_attr_group);
	FUNC1();
	FUNC0(ctx->post_msg_wq);
	FUNC3(ctx->qos);
	FUNC2(ctx->fw_sg_list.src);
	FUNC2(ctx->fw_sg_list.dst);
	ctx->fw_sg_list.list_len = 0;
	FUNC2(ctx->fw_in_mem);
	ctx->fw_in_mem = NULL;
	FUNC6(ctx);
	ctx = NULL;
}