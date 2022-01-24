#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned int drv_id; int /*<<< orphan*/  msg_id; scalar_t__ result; scalar_t__ large; } ;
union ipc_header_high {TYPE_3__ part; int /*<<< orphan*/  full; } ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  header_low_payload; union ipc_header_high header_high; } ;
struct TYPE_5__ {TYPE_1__ p; } ;
struct ipc_post {scalar_t__ mailbox_data; TYPE_2__ mrfld_header; } ;
struct ipc_dsp_hdr {int /*<<< orphan*/  cmd_id; } ;
struct intel_sst_drv {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int SST_ASYNC_DRV_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_sst_drv*,struct ipc_post*) ; 
 scalar_t__ FUNC5 (struct intel_sst_drv*,scalar_t__,unsigned int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

void FUNC6(struct intel_sst_drv *sst_drv_ctx,
		struct ipc_post *msg)
{
	unsigned int drv_id;
	void *data;
	union ipc_header_high msg_high;
	u32 msg_low;
	struct ipc_dsp_hdr *dsp_hdr;

	msg_high = msg->mrfld_header.p.header_high;
	msg_low = msg->mrfld_header.p.header_low_payload;

	FUNC0(sst_drv_ctx->dev, "IPC process message header %x payload %x\n",
			msg->mrfld_header.p.header_high.full,
			msg->mrfld_header.p.header_low_payload);

	drv_id = msg_high.part.drv_id;

	/* Check for async messages first */
	if (drv_id == SST_ASYNC_DRV_ID) {
		/*FW sent async large message*/
		FUNC4(sst_drv_ctx, msg);
		return;
	}

	/* FW sent short error response for an IPC */
	if (msg_high.part.result && drv_id && !msg_high.part.large) {
		/* 32-bit FW error code in msg_low */
		FUNC1(sst_drv_ctx->dev, "FW sent error response 0x%x", msg_low);
		FUNC5(sst_drv_ctx, msg_high.part.result,
			msg_high.part.drv_id,
			msg_high.part.msg_id, NULL, 0);
		return;
	}

	/*
	 * Process all valid responses
	 * if it is a large message, the payload contains the size to
	 * copy from mailbox
	 **/
	if (msg_high.part.large) {
		data = FUNC3((void *)msg->mailbox_data, msg_low, GFP_KERNEL);
		if (!data)
			return;
		/* Copy command id so that we can use to put sst to reset */
		dsp_hdr = (struct ipc_dsp_hdr *)data;
		FUNC0(sst_drv_ctx->dev, "cmd_id %d\n", dsp_hdr->cmd_id);
		if (FUNC5(sst_drv_ctx, msg_high.part.result,
				msg_high.part.drv_id,
				msg_high.part.msg_id, data, msg_low))
			FUNC2(data);
	} else {
		FUNC5(sst_drv_ctx, msg_high.part.result,
				msg_high.part.drv_id,
				msg_high.part.msg_id, NULL, 0);
	}

}