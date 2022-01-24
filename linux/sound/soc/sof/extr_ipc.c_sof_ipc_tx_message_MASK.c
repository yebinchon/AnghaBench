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
struct snd_sof_ipc {int /*<<< orphan*/  tx_mutex; } ;

/* Variables and functions */
 int ENOBUFS ; 
 size_t SOF_IPC_MSG_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_sof_ipc*,int /*<<< orphan*/ ,void*,size_t,void*,size_t) ; 

int FUNC3(struct snd_sof_ipc *ipc, u32 header,
		       void *msg_data, size_t msg_bytes, void *reply_data,
		       size_t reply_bytes)
{
	int ret;

	if (msg_bytes > SOF_IPC_MSG_MAX_SIZE ||
	    reply_bytes > SOF_IPC_MSG_MAX_SIZE)
		return -ENOBUFS;

	/* Serialise IPC TX */
	FUNC0(&ipc->tx_mutex);

	ret = FUNC2(ipc, header, msg_data, msg_bytes,
					  reply_data, reply_bytes);

	FUNC1(&ipc->tx_mutex);

	return ret;
}