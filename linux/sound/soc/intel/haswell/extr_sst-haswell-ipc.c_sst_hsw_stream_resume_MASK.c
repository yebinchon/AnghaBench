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
struct sst_hsw_stream {TYPE_1__ reply; } ;
struct sst_hsw {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_STR_RESUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct sst_hsw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

int FUNC4(struct sst_hsw *hsw, struct sst_hsw_stream *stream,
	int wait)
{
	int ret;

	if (!stream) {
		FUNC1(hsw->dev, "warning: stream is NULL, no stream to resume, ignore it.\n");
		return 0;
	}

	FUNC3("stream resume", stream->reply.stream_hw_id);

	ret = FUNC2(hsw, IPC_STR_RESUME,
		stream->reply.stream_hw_id, wait);
	if (ret < 0)
		FUNC0(hsw->dev, "error: failed to resume stream %d\n",
			stream->reply.stream_hw_id);

	return ret;
}