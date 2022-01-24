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
typedef  int u32 ;
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int SOF_CMD_TYPE_MASK ; 
 int FUNC0 (int) ; 
#define  SOF_IPC_STREAM_POSITION 129 
#define  SOF_IPC_STREAM_TRIG_XRUN 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sof_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_sof_dev*,int) ; 

__attribute__((used)) static void FUNC4(struct snd_sof_dev *sdev, u32 msg_cmd)
{
	/* get msg cmd type and msd id */
	u32 msg_type = msg_cmd & SOF_CMD_TYPE_MASK;
	u32 msg_id = FUNC0(msg_cmd);

	switch (msg_type) {
	case SOF_IPC_STREAM_POSITION:
		FUNC2(sdev, msg_id);
		break;
	case SOF_IPC_STREAM_TRIG_XRUN:
		FUNC3(sdev, msg_id);
		break;
	default:
		FUNC1(sdev->dev, "error: unhandled stream message %x\n",
			msg_id);
		break;
	}
}