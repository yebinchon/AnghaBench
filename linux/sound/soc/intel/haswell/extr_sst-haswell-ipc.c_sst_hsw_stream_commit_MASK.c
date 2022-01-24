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
struct sst_ipc_message {int size; int /*<<< orphan*/ * data; int /*<<< orphan*/  header; int /*<<< orphan*/  member_0; } ;
struct sst_hsw_stream {int commited; int /*<<< orphan*/  reply; int /*<<< orphan*/  request; int /*<<< orphan*/  host_id; } ;
struct sst_hsw {int /*<<< orphan*/  dev; int /*<<< orphan*/  ipc; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_GLB_ALLOCATE_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct sst_ipc_message,struct sst_ipc_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct sst_hsw_stream*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

int FUNC6(struct sst_hsw *hsw, struct sst_hsw_stream *stream)
{
	struct sst_ipc_message request, reply = {0};
	int ret;

	if (!stream) {
		FUNC2(hsw->dev, "warning: stream is NULL, no stream to commit, ignore it.\n");
		return 0;
	}

	if (stream->commited) {
		FUNC2(hsw->dev, "warning: stream is already committed, ignore it.\n");
		return 0;
	}

	FUNC5("stream alloc", stream->host_id);

	request.header = FUNC0(IPC_GLB_ALLOCATE_STREAM);
	request.data = &stream->request;
	request.size = sizeof(stream->request);
	reply.data = &stream->reply;
	reply.size = sizeof(stream->reply);

	ret = FUNC3(&hsw->ipc, request, &reply);
	if (ret < 0) {
		FUNC1(hsw->dev, "error: stream commit failed\n");
		return ret;
	}

	stream->commited = true;
	FUNC4(stream);

	return 0;
}