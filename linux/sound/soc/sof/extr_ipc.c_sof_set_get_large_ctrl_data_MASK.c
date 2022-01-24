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
struct sof_ipc_ctrl_data_params {size_t msg_bytes; size_t pl_size; size_t hdr_bytes; int num_msg; struct sof_ipc_ctrl_data* src; struct sof_ipc_ctrl_data* dst; } ;
struct TYPE_4__ {scalar_t__ size; int /*<<< orphan*/  cmd; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
struct sof_ipc_ctrl_data {size_t num_elems; int msg_index; size_t elems_remaining; TYPE_2__ rhdr; int /*<<< orphan*/  type; } ;
struct snd_sof_dev {TYPE_3__* ipc; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_mutex; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SOF_IPC_MSG_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sof_ipc_ctrl_data*) ; 
 struct sof_ipc_ctrl_data* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sof_ipc_ctrl_data*,struct sof_ipc_ctrl_data*,size_t) ; 
 size_t FUNC3 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct sof_ipc_ctrl_data*,struct sof_ipc_ctrl_data*,struct sof_ipc_ctrl_data_params*) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,struct sof_ipc_ctrl_data*,scalar_t__,struct sof_ipc_ctrl_data*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct snd_sof_dev *sdev,
				       struct sof_ipc_ctrl_data *cdata,
				       struct sof_ipc_ctrl_data_params *sparams,
				       bool send)
{
	struct sof_ipc_ctrl_data *partdata;
	size_t send_bytes;
	size_t offset = 0;
	size_t msg_bytes;
	size_t pl_size;
	int err;
	int i;

	/* allocate max ipc size because we have at least one */
	partdata = FUNC1(SOF_IPC_MSG_MAX_SIZE, GFP_KERNEL);
	if (!partdata)
		return -ENOMEM;

	if (send)
		err = FUNC6(cdata->type, cdata, partdata,
					       sparams);
	else
		err = FUNC6(cdata->type, partdata, cdata,
					       sparams);
	if (err < 0) {
		FUNC0(partdata);
		return err;
	}

	msg_bytes = sparams->msg_bytes;
	pl_size = sparams->pl_size;

	/* copy the header data */
	FUNC2(partdata, cdata, sparams->hdr_bytes);

	/* Serialise IPC TX */
	FUNC4(&sdev->ipc->tx_mutex);

	/* copy the payload data in a loop */
	for (i = 0; i < sparams->num_msg; i++) {
		send_bytes = FUNC3(msg_bytes, pl_size);
		partdata->num_elems = send_bytes;
		partdata->rhdr.hdr.size = sparams->hdr_bytes + send_bytes;
		partdata->msg_index = i;
		msg_bytes -= send_bytes;
		partdata->elems_remaining = msg_bytes;

		if (send)
			FUNC2(sparams->dst, sparams->src + offset, send_bytes);

		err = FUNC7(sdev->ipc,
						  partdata->rhdr.hdr.cmd,
						  partdata,
						  partdata->rhdr.hdr.size,
						  partdata,
						  partdata->rhdr.hdr.size);
		if (err < 0)
			break;

		if (!send)
			FUNC2(sparams->dst + offset, sparams->src, send_bytes);

		offset += pl_size;
	}

	FUNC5(&sdev->ipc->tx_mutex);

	FUNC0(partdata);
	return err;
}