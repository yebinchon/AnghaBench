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
typedef  int /*<<< orphan*/  u32 ;
struct snd_sof_ipc_msg {size_t msg_size; size_t reply_size; int ipc_complete; int /*<<< orphan*/  header; int /*<<< orphan*/  msg_data; scalar_t__ reply_error; } ;
struct snd_sof_ipc {struct snd_sof_ipc_msg msg; scalar_t__ disable_ipc_tx; struct snd_sof_dev* sdev; } ;
struct snd_sof_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  ipc_lock; struct snd_sof_ipc_msg* msg; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,size_t) ; 
 int FUNC3 (struct snd_sof_dev*,struct snd_sof_ipc_msg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct snd_sof_ipc*,struct snd_sof_ipc_msg*,void*) ; 

__attribute__((used)) static int FUNC7(struct snd_sof_ipc *ipc, u32 header,
				       void *msg_data, size_t msg_bytes,
				       void *reply_data, size_t reply_bytes)
{
	struct snd_sof_dev *sdev = ipc->sdev;
	struct snd_sof_ipc_msg *msg;
	int ret;

	if (ipc->disable_ipc_tx)
		return -ENODEV;

	/*
	 * The spin-lock is also still needed to protect message objects against
	 * other atomic contexts.
	 */
	FUNC4(&sdev->ipc_lock);

	/* initialise the message */
	msg = &ipc->msg;

	msg->header = header;
	msg->msg_size = msg_bytes;
	msg->reply_size = reply_bytes;
	msg->reply_error = 0;

	/* attach any data */
	if (msg_bytes)
		FUNC2(msg->msg_data, msg_data, msg_bytes);

	sdev->msg = msg;

	ret = FUNC3(sdev, msg);
	/* Next reply that we receive will be related to this message */
	if (!ret)
		msg->ipc_complete = false;

	FUNC5(&sdev->ipc_lock);

	if (ret < 0) {
		/* So far IPC TX never fails, consider making the above void */
		FUNC0(sdev->dev,
				    "error: ipc tx failed with error %d\n",
				    ret);
		return ret;
	}

	FUNC1(sdev->dev, "ipc tx", msg->header);

	/* now wait for completion */
	if (!ret)
		ret = FUNC6(ipc, msg, reply_data);

	return ret;
}