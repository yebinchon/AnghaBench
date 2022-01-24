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
struct sst_ipc_message {scalar_t__ data; int /*<<< orphan*/  header; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* shim_dbg ) (struct sst_generic_ipc*,char*) ;} ;
struct sst_generic_ipc {TYPE_3__* dsp; int /*<<< orphan*/  empty_list; TYPE_1__ ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; int /*<<< orphan*/  header; } ;
struct ipc_message {int errno; int /*<<< orphan*/  list; TYPE_2__ rx; int /*<<< orphan*/  complete; int /*<<< orphan*/  waitq; } ;
struct TYPE_6__ {int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  IPC_TIMEOUT_MSECS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct sst_generic_ipc*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sst_generic_ipc *ipc,
	struct ipc_message *msg, struct sst_ipc_message *reply)
{
	unsigned long flags;
	int ret;

	/* wait for DSP completion (in all cases atm inc pending) */
	ret = FUNC7(msg->waitq, msg->complete,
		FUNC3(IPC_TIMEOUT_MSECS));

	FUNC4(&ipc->dsp->spinlock, flags);
	if (ret == 0) {
		if (ipc->ops.shim_dbg != NULL)
			ipc->ops.shim_dbg(ipc, "message timeout");

		FUNC1(&msg->list);
		ret = -ETIMEDOUT;
	} else {

		/* copy the data returned from DSP */
		if (reply) {
			reply->header = msg->rx.header;
			if (reply->data)
				FUNC2(reply->data, msg->rx.data, msg->rx.size);
		}
		ret = msg->errno;
	}

	FUNC0(&msg->list, &ipc->empty_list);
	FUNC5(&ipc->dsp->spinlock, flags);
	return ret;
}