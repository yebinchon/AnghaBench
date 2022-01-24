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
typedef  int u32 ;
struct sof_ipc_cmd_hdr {int cmd; } ;
struct snd_sof_dev {int boot_complete; int /*<<< orphan*/  dev; int /*<<< orphan*/  boot_wait; } ;
typedef  int /*<<< orphan*/  hdr ;
struct TYPE_2__ {int (* fw_ready ) (struct snd_sof_dev*,int) ;} ;

/* Variables and functions */
 int SOF_CMD_TYPE_MASK ; 
 int SOF_GLB_TYPE_MASK ; 
#define  SOF_IPC_FW_READY 135 
#define  SOF_IPC_GLB_COMPOUND 134 
#define  SOF_IPC_GLB_COMP_MSG 133 
#define  SOF_IPC_GLB_PM_MSG 132 
#define  SOF_IPC_GLB_REPLY 131 
#define  SOF_IPC_GLB_STREAM_MSG 130 
#define  SOF_IPC_GLB_TPLG_MSG 129 
#define  SOF_IPC_GLB_TRACE_MSG 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sof_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_sof_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_sof_dev*,int /*<<< orphan*/ *,struct sof_ipc_cmd_hdr*,int) ; 
 TYPE_1__* FUNC5 (struct snd_sof_dev*) ; 
 int FUNC6 (struct snd_sof_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct snd_sof_dev *sdev)
{
	struct sof_ipc_cmd_hdr hdr;
	u32 cmd, type;
	int err = 0;

	/* read back header */
	FUNC4(sdev, NULL, &hdr, sizeof(hdr));
	FUNC1(sdev->dev, "ipc rx", hdr.cmd);

	cmd = hdr.cmd & SOF_GLB_TYPE_MASK;
	type = hdr.cmd & SOF_CMD_TYPE_MASK;

	/* check message type */
	switch (cmd) {
	case SOF_IPC_GLB_REPLY:
		FUNC0(sdev->dev, "error: ipc reply unknown\n");
		break;
	case SOF_IPC_FW_READY:
		/* check for FW boot completion */
		if (!sdev->boot_complete) {
			err = FUNC5(sdev)->fw_ready(sdev, cmd);
			if (err < 0) {
				/*
				 * this indicates a mismatch in ABI
				 * between the driver and fw
				 */
				FUNC0(sdev->dev, "error: ABI mismatch %d\n",
					err);
			} else {
				/* firmware boot completed OK */
				sdev->boot_complete = true;
			}

			/* wake up firmware loader */
			FUNC7(&sdev->boot_wait);
		}
		break;
	case SOF_IPC_GLB_COMPOUND:
	case SOF_IPC_GLB_TPLG_MSG:
	case SOF_IPC_GLB_PM_MSG:
	case SOF_IPC_GLB_COMP_MSG:
		break;
	case SOF_IPC_GLB_STREAM_MSG:
		/* need to pass msg id into the function */
		FUNC2(sdev, hdr.cmd);
		break;
	case SOF_IPC_GLB_TRACE_MSG:
		FUNC3(sdev, type);
		break;
	default:
		FUNC0(sdev->dev, "error: unknown DSP message 0x%x\n", cmd);
		break;
	}

	FUNC1(sdev->dev, "ipc rx done", hdr.cmd);
}