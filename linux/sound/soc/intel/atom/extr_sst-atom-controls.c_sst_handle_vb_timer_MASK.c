#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sst_data {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {scalar_t__ length; int /*<<< orphan*/  dst; int /*<<< orphan*/  command_id; } ;
struct sst_cmd_generic {TYPE_1__ header; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; TYPE_2__* ops; } ;
struct TYPE_5__ {int (* power ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SBA_IDLE ; 
 int /*<<< orphan*/  SBA_VB_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SST_FLAG_BLOCKED ; 
 int /*<<< orphan*/  SST_IPC_IA_CMD ; 
 int /*<<< orphan*/  SST_TASK_SBA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sst_data* FUNC4 (struct snd_soc_dai*) ; 
 TYPE_3__* sst ; 
 int FUNC5 (struct sst_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sst_cmd_generic*,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

int FUNC8(struct snd_soc_dai *dai, bool enable)
{
	int ret = 0;
	struct sst_cmd_generic cmd;
	struct sst_data *drv = FUNC4(dai);
	static int timer_usage;

	if (enable)
		cmd.header.command_id = SBA_VB_START;
	else
		cmd.header.command_id = SBA_IDLE;
	FUNC1(dai->dev, "enable=%u, usage=%d\n", enable, timer_usage);

	FUNC0(cmd.header.dst);
	cmd.header.length = 0;

	if (enable) {
		ret = sst->ops->power(sst->dev, true);
		if (ret < 0)
			return ret;
	}

	FUNC2(&drv->lock);
	if (enable)
		timer_usage++;
	else
		timer_usage--;

	/*
	 * Send the command only if this call is the first enable or last
	 * disable
	 */
	if ((enable && (timer_usage == 1)) ||
	    (!enable && (timer_usage == 0))) {
		ret = FUNC5(drv, SST_IPC_IA_CMD,
				SST_FLAG_BLOCKED, SST_TASK_SBA, 0, &cmd,
				sizeof(cmd.header) + cmd.header.length);
		if (ret && enable) {
			timer_usage--;
			enable  = false;
		}
	}
	FUNC3(&drv->lock);

	if (!enable)
		sst->ops->power(sst->dev, false);
	return ret;
}