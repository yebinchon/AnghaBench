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
struct sst_ipc_message {int size; TYPE_2__* data; int /*<<< orphan*/  header; } ;
struct TYPE_4__ {int /*<<< orphan*/  stream_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  stream_hw_id; } ;
struct sst_hsw_stream {int /*<<< orphan*/  node; int /*<<< orphan*/  notify_work; TYPE_2__ free_req; TYPE_1__ reply; int /*<<< orphan*/  host_id; int /*<<< orphan*/  commited; } ;
struct sst_hsw {int /*<<< orphan*/  dev; int /*<<< orphan*/  ipc; struct sst_dsp* dsp; } ;
struct sst_dsp {int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  IPC_GLB_FREE_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sst_hsw_stream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct sst_ipc_message,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sst_hsw_stream*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 

int FUNC11(struct sst_hsw *hsw, struct sst_hsw_stream *stream)
{
	struct sst_ipc_message request;
	int ret = 0;
	struct sst_dsp *sst = hsw->dsp;
	unsigned long flags;

	if (!stream) {
		FUNC3(hsw->dev, "warning: stream is NULL, no stream to free, ignore it.\n");
		return 0;
	}

	/* dont free DSP streams that are not commited */
	if (!stream->commited)
		goto out;

	FUNC10("stream free", stream->host_id);

	stream->free_req.stream_id = stream->reply.stream_hw_id;
	request.header = FUNC0(IPC_GLB_FREE_STREAM);
	request.data = &stream->free_req;
	request.size = sizeof(stream->free_req);

	ret = FUNC8(&hsw->ipc, request, NULL);
	if (ret < 0) {
		FUNC2(hsw->dev, "error: free stream %d failed\n",
			stream->free_req.stream_id);
		return -EAGAIN;
	}

	FUNC9(stream, &stream->free_req);

out:
	FUNC1(&stream->notify_work);
	FUNC6(&sst->spinlock, flags);
	FUNC5(&stream->node);
	FUNC4(stream);
	FUNC7(&sst->spinlock, flags);

	return ret;
}