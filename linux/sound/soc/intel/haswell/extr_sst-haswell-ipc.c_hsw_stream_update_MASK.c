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
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  stream_hw_id; } ;
struct sst_hsw_stream {int running; TYPE_1__ reply; } ;
struct sst_hsw {int dummy; } ;
struct TYPE_4__ {int header; } ;
struct ipc_message {TYPE_2__ tx; } ;

/* Variables and functions */
 int IPC_GLB_REPLY_MASK ; 
 int IPC_STATUS_MASK ; 
#define  IPC_STR_NOTIFICATION 132 
#define  IPC_STR_PAUSE 131 
#define  IPC_STR_RESET 130 
#define  IPC_STR_RESUME 129 
#define  IPC_STR_STAGE_MESSAGE 128 
 struct sst_hsw_stream* FUNC0 (struct sst_hsw*,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct sst_hsw *hsw, struct ipc_message *msg)
{
	struct sst_hsw_stream *stream;
	u32 header = msg->tx.header & ~(IPC_STATUS_MASK | IPC_GLB_REPLY_MASK);
	u32 stream_id = FUNC1(header);
	u32 stream_msg = FUNC2(header);

	stream = FUNC0(hsw, stream_id);
	if (stream == NULL)
		return;

	switch (stream_msg) {
	case IPC_STR_STAGE_MESSAGE:
	case IPC_STR_NOTIFICATION:
		break;
	case IPC_STR_RESET:
		FUNC3("stream reset", stream->reply.stream_hw_id);
		break;
	case IPC_STR_PAUSE:
		stream->running = false;
		FUNC3("stream paused",
			stream->reply.stream_hw_id);
		break;
	case IPC_STR_RESUME:
		stream->running = true;
		FUNC3("stream running",
			stream->reply.stream_hw_id);
		break;
	}
}