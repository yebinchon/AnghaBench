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
struct skl_ipc_large_config_msg {int param_data_size; int /*<<< orphan*/  large_param_id; int /*<<< orphan*/  member_0; } ;
struct skl_dev {int /*<<< orphan*/  ipc; } ;
struct skl_astate_param {int dummy; } ;
typedef  int /*<<< orphan*/  cnt ;

/* Variables and functions */
 int /*<<< orphan*/  SKL_ASTATE_PARAM_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct skl_ipc_large_config_msg*,void*) ; 

void FUNC1(struct skl_dev *skl, u32 cnt, void *data)
{
	struct skl_ipc_large_config_msg	msg = {0};

	msg.large_param_id = SKL_ASTATE_PARAM_ID;
	msg.param_data_size = (cnt * sizeof(struct skl_astate_param) +
				sizeof(cnt));

	FUNC0(&skl->ipc, &msg, data);
}