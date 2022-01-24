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
struct sst_ipc_message {int /*<<< orphan*/  header; int /*<<< orphan*/  member_0; } ;
struct sst_dsp {int /*<<< orphan*/  spinlock; } ;
struct sst_byt_stream {int commited; int /*<<< orphan*/  node; int /*<<< orphan*/  str_id; } ;
struct sst_byt {int /*<<< orphan*/  dev; int /*<<< orphan*/  ipc; struct sst_dsp* dsp; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  IPC_IA_FREE_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sst_byt_stream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct sst_ipc_message,int /*<<< orphan*/ *) ; 

int FUNC7(struct sst_byt *byt, struct sst_byt_stream *stream)
{
	struct sst_ipc_message request = {0};
	int ret = 0;
	struct sst_dsp *sst = byt->dsp;
	unsigned long flags;

	if (!stream->commited)
		goto out;

	request.header = FUNC5(IPC_IA_FREE_STREAM,
			0, false, stream->str_id);
	ret = FUNC6(&byt->ipc, request, NULL);
	if (ret < 0) {
		FUNC0(byt->dev, "ipc: free stream %d failed\n",
			stream->str_id);
		return -EAGAIN;
	}

	stream->commited = false;
out:
	FUNC3(&sst->spinlock, flags);
	FUNC2(&stream->node);
	FUNC1(stream);
	FUNC4(&sst->spinlock, flags);

	return ret;
}