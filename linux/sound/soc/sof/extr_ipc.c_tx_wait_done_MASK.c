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
struct sof_ipc_cmd_hdr {int /*<<< orphan*/  cmd; int /*<<< orphan*/  size; } ;
struct snd_sof_ipc_msg {int reply_error; int /*<<< orphan*/  reply_size; int /*<<< orphan*/  reply_data; int /*<<< orphan*/  ipc_complete; int /*<<< orphan*/  waitq; struct sof_ipc_cmd_hdr* msg_data; } ;
struct snd_sof_ipc {struct snd_sof_dev* sdev; } ;
struct snd_sof_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  ipc_timeout; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int SOF_DBG_MBOX ; 
 int SOF_DBG_REGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_sof_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_sof_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_sof_dev*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_sof_ipc *ipc, struct snd_sof_ipc_msg *msg,
			void *reply_data)
{
	struct snd_sof_dev *sdev = ipc->sdev;
	struct sof_ipc_cmd_hdr *hdr = msg->msg_data;
	int ret;

	/* wait for DSP IPC completion */
	ret = FUNC7(msg->waitq, msg->ipc_complete,
				 FUNC3(sdev->ipc_timeout));

	if (ret == 0) {
		FUNC0(sdev->dev, "error: ipc timed out for 0x%x size %d\n",
			hdr->cmd, hdr->size);
		FUNC4(ipc->sdev, SOF_DBG_REGS | SOF_DBG_MBOX);
		FUNC5(ipc->sdev);
		FUNC6(ipc->sdev);
		ret = -ETIMEDOUT;
	} else {
		/* copy the data returned from DSP */
		ret = msg->reply_error;
		if (msg->reply_size)
			FUNC2(reply_data, msg->reply_data, msg->reply_size);
		if (ret < 0)
			FUNC0(sdev->dev, "error: ipc error for 0x%x size %zu\n",
				hdr->cmd, msg->reply_size);
		else
			FUNC1(sdev->dev, "ipc tx succeeded", hdr->cmd);
	}

	return ret;
}