#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int (* cl_copy_to_dmabuf ) (struct sst_dsp*,void const*,int,int) ;int /*<<< orphan*/  (* cl_stop_dma ) (struct sst_dsp*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct sst_dsp {TYPE_2__ cl_dev; int /*<<< orphan*/  dev; struct skl_dev* thread_context; } ;
struct skl_dev {int mod_load_complete; int /*<<< orphan*/  mod_load_status; int /*<<< orphan*/  mod_load_wait; int /*<<< orphan*/  ipc; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  SKL_IPC_BOOT_MSECS ; 
 int /*<<< orphan*/  SKL_NUM_MODULES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sst_dsp*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct sst_dsp*,void const*,int,int) ; 
 int FUNC6 (struct sst_dsp*,void const*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sst_dsp*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct sst_dsp *ctx, const void *data,
			u32 size, u16 mod_id, u8 table_id, bool is_module)
{
	int ret, bytes_left, curr_pos;
	struct skl_dev *skl = ctx->thread_context;
	skl->mod_load_complete = false;

	bytes_left = ctx->cl_dev.ops.cl_copy_to_dmabuf(ctx, data, size, false);
	if (bytes_left < 0)
		return bytes_left;

	/* check is_module flag to load module or library */
	if (is_module)
		ret = FUNC3(&skl->ipc, SKL_NUM_MODULES, &mod_id);
	else
		ret = FUNC4(&skl->ipc, 0, table_id, false);

	if (ret < 0) {
		FUNC0(ctx->dev, "Failed to Load %s with err %d\n",
				is_module ? "module" : "lib", ret);
		goto out;
	}

	/*
	 * if bytes_left > 0 then wait for BDL complete interrupt and
	 * copy the next chunk till bytes_left is 0. if bytes_left is
	 * is zero, then wait for load module IPC reply
	 */
	while (bytes_left > 0) {
		curr_pos = size - bytes_left;

		ret = FUNC2(ctx);
		if (ret < 0)
			goto out;

		bytes_left = ctx->cl_dev.ops.cl_copy_to_dmabuf(ctx,
							data + curr_pos,
							bytes_left, false);
	}

	ret = FUNC8(skl->mod_load_wait, skl->mod_load_complete,
				FUNC1(SKL_IPC_BOOT_MSECS));
	if (ret == 0 || !skl->mod_load_status) {
		FUNC0(ctx->dev, "Module Load failed\n");
		ret = -EIO;
	}

out:
	ctx->cl_dev.ops.cl_stop_dma(ctx);

	return ret;
}