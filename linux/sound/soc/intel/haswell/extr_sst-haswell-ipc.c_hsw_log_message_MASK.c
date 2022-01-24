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
typedef  scalar_t__ u32 ;
struct sst_hsw_log_stream {int /*<<< orphan*/  notify_work; int /*<<< orphan*/  rw_mutex; int /*<<< orphan*/  curr_pos; int /*<<< orphan*/  last_pos; } ;
struct sst_hsw {int /*<<< orphan*/  dsp; int /*<<< orphan*/  dev; struct sst_hsw_log_stream log_stream; } ;

/* Variables and functions */
 scalar_t__ IPC_DEBUG_REQUEST_LOG_DUMP ; 
 scalar_t__ IPC_LOG_OP_MASK ; 
 scalar_t__ IPC_LOG_OP_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct sst_hsw *hsw, u32 header)
{
	u32 operation = (header & IPC_LOG_OP_MASK) >>  IPC_LOG_OP_SHIFT;
	struct sst_hsw_log_stream *stream = &hsw->log_stream;
	int ret = 1;

	if (operation != IPC_DEBUG_REQUEST_LOG_DUMP) {
		FUNC0(hsw->dev,
			"error: log msg not implemented 0x%8.8x\n", header);
		return 0;
	}

	FUNC1(&stream->rw_mutex);
	stream->last_pos = stream->curr_pos;
	FUNC4(
		hsw->dsp, &stream->curr_pos, sizeof(stream->curr_pos));
	FUNC2(&stream->rw_mutex);

	FUNC3(&stream->notify_work);

	return ret;
}