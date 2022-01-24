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
struct sst_byt_stream {int /*<<< orphan*/  str_id; int /*<<< orphan*/  commited; } ;
struct sst_byt {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_IA_DROP_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sst_byt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct sst_byt *byt, struct sst_byt_stream *stream)
{
	int ret;

	/* don't stop streams that are not commited */
	if (!stream->commited)
		return 0;

	ret = FUNC1(byt, IPC_IA_DROP_STREAM,
					stream->str_id, 0);
	if (ret < 0)
		FUNC0(byt->dev, "ipc: error failed to stop stream %d\n",
			stream->str_id);
	return ret;
}