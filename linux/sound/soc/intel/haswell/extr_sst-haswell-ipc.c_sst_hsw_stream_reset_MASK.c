#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  stream_hw_id; } ;
struct sst_hsw_stream {TYPE_1__ reply; scalar_t__ running; int /*<<< orphan*/  commited; } ;
struct sst_hsw {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IPC_STR_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct sst_hsw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

int FUNC5(struct sst_hsw *hsw, struct sst_hsw_stream *stream)
{
	int ret, tries = 10;

	if (!stream) {
		FUNC1(hsw->dev, "warning: stream is NULL, no stream to reset, ignore it.\n");
		return 0;
	}

	/* dont reset streams that are not commited */
	if (!stream->commited)
		return 0;

	/* wait for pause to complete before we reset the stream */
	while (stream->running && --tries)
		FUNC2(1);
	if (!tries) {
		FUNC0(hsw->dev, "error: reset stream %d still running\n",
			stream->reply.stream_hw_id);
		return -EINVAL;
	}

	FUNC4("stream reset", stream->reply.stream_hw_id);

	ret = FUNC3(hsw, IPC_STR_RESET,
		stream->reply.stream_hw_id, 1);
	if (ret < 0)
		FUNC0(hsw->dev, "error: failed to reset stream %d\n",
			stream->reply.stream_hw_id);
	return ret;
}