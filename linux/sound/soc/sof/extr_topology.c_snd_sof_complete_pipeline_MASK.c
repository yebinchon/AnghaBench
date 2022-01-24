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
struct sof_ipc_reply {int dummy; } ;
struct TYPE_3__ {int size; int cmd; } ;
struct sof_ipc_pipe_ready {TYPE_1__ hdr; int /*<<< orphan*/  comp_id; } ;
struct snd_sof_widget {int /*<<< orphan*/  comp_id; TYPE_2__* widget; } ;
struct snd_sof_dev {int /*<<< orphan*/  ipc; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  reply ;
typedef  int /*<<< orphan*/  ready ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int SOF_IPC_GLB_TPLG_MSG ; 
 int SOF_IPC_TPLG_PIPE_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sof_ipc_pipe_ready*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,struct sof_ipc_pipe_ready*,int,struct sof_ipc_reply*,int) ; 

int FUNC3(struct snd_sof_dev *sdev,
			      struct snd_sof_widget *swidget)
{
	struct sof_ipc_pipe_ready ready;
	struct sof_ipc_reply reply;
	int ret;

	FUNC0(sdev->dev, "tplg: complete pipeline %s id %d\n",
		swidget->widget->name, swidget->comp_id);

	FUNC1(&ready, 0, sizeof(ready));
	ready.hdr.size = sizeof(ready);
	ready.hdr.cmd = SOF_IPC_GLB_TPLG_MSG | SOF_IPC_TPLG_PIPE_COMPLETE;
	ready.comp_id = swidget->comp_id;

	ret = FUNC2(sdev->ipc,
				 ready.hdr.cmd, &ready, sizeof(ready), &reply,
				 sizeof(reply));
	if (ret < 0)
		return ret;
	return 1;
}