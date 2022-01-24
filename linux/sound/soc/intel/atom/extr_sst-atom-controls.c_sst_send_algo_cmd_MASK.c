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
struct sst_data {int dummy; } ;
struct sst_cmd_set_params {int /*<<< orphan*/  params; int /*<<< orphan*/  command_id; int /*<<< orphan*/  dst; } ;
struct sst_algo_control {int max; int /*<<< orphan*/  task_id; int /*<<< orphan*/  params; int /*<<< orphan*/  cmd_id; int /*<<< orphan*/  module_id; int /*<<< orphan*/  pipe_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SST_FLAG_BLOCKED ; 
 int /*<<< orphan*/  SST_IPC_IA_SET_PARAMS ; 
 int /*<<< orphan*/  FUNC1 (struct sst_cmd_set_params*) ; 
 struct sst_cmd_set_params* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct sst_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sst_cmd_set_params*,int) ; 

__attribute__((used)) static int FUNC5(struct sst_data *drv,
			      struct sst_algo_control *bc)
{
	int len, ret = 0;
	struct sst_cmd_set_params *cmd;

	/*bc->max includes sizeof algos + length field*/
	len = sizeof(cmd->dst) + sizeof(cmd->command_id) + bc->max;

	cmd = FUNC2(len, GFP_KERNEL);
	if (cmd == NULL)
		return -ENOMEM;

	FUNC0(2, cmd->dst, bc->pipe_id, bc->module_id);
	cmd->command_id = bc->cmd_id;
	FUNC3(cmd->params, bc->params, bc->max);

	ret = FUNC4(drv, SST_IPC_IA_SET_PARAMS,
				SST_FLAG_BLOCKED, bc->task_id, 0, cmd, len);
	FUNC1(cmd);
	return ret;
}