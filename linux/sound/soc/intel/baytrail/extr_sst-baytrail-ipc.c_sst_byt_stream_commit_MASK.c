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
struct sst_ipc_message {int size; int /*<<< orphan*/ * data; int /*<<< orphan*/  header; int /*<<< orphan*/  member_0; } ;
struct sst_byt_stream {int commited; int /*<<< orphan*/  reply; int /*<<< orphan*/  request; int /*<<< orphan*/  str_id; } ;
struct sst_byt {int /*<<< orphan*/  dev; int /*<<< orphan*/  ipc; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_IA_ALLOC_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct sst_ipc_message,struct sst_ipc_message*) ; 

int FUNC3(struct sst_byt *byt, struct sst_byt_stream *stream)
{
	struct sst_ipc_message request, reply = {0};
	int ret;

	request.header = FUNC1(IPC_IA_ALLOC_STREAM,
				sizeof(stream->request) + sizeof(u32),
				true, stream->str_id);
	request.data = &stream->request;
	request.size = sizeof(stream->request);
	reply.data = &stream->reply;
	reply.size = sizeof(stream->reply);

	ret = FUNC2(&byt->ipc, request, &reply);
	if (ret < 0) {
		FUNC0(byt->dev, "ipc: error stream commit failed\n");
		return ret;
	}

	stream->commited = true;

	return 0;
}