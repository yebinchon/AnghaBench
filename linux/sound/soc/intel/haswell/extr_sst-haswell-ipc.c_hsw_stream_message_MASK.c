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
typedef  int u32 ;
struct sst_hsw_stream {int header; int /*<<< orphan*/  notify_work; } ;
struct sst_hsw {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  IPC_STR_NOTIFICATION 129 
#define  IPC_STR_STAGE_MESSAGE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct sst_hsw_stream* FUNC1 (struct sst_hsw*,int) ; 
 int FUNC2 (struct sst_hsw*,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct sst_hsw *hsw, u32 header)
{
	u32 stream_msg, stream_id;
	struct sst_hsw_stream *stream;
	int handled = 0;

	stream_msg = FUNC4(header);
	stream_id = FUNC3(header);

	stream = FUNC1(hsw, stream_id);
	if (stream == NULL)
		return handled;

	stream->header = header;

	switch (stream_msg) {
	case IPC_STR_STAGE_MESSAGE:
		FUNC0(hsw->dev, "error: stage msg not implemented 0x%8.8x\n",
			header);
		break;
	case IPC_STR_NOTIFICATION:
		FUNC5(&stream->notify_work);
		break;
	default:
		/* handle pending message complete request */
		handled = FUNC2(hsw, header);
		break;
	}

	return handled;
}