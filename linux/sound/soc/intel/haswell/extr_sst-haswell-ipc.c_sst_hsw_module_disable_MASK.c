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
struct sst_module {int /*<<< orphan*/  state; } ;
struct sst_ipc_message {int header; int /*<<< orphan*/  member_0; } ;
struct sst_hsw {int /*<<< orphan*/  ipc; struct sst_dsp* dsp; struct device* dev; } ;
struct sst_dsp {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  IPC_GLB_MODULE_OPERATION ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPC_MODULE_DISABLE ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SST_MODULE_STATE_INITIALIZED ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sst_hsw*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sst_hsw*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct sst_ipc_message,int /*<<< orphan*/ *) ; 
 struct sst_module* FUNC9 (struct sst_dsp*,int) ; 

int FUNC10(struct sst_hsw *hsw,
	u32 module_id, u32 instance_id)
{
	int ret;
	struct sst_ipc_message request = {0};
	struct sst_module *module;
	struct device *dev = hsw->dev;
	struct sst_dsp *dsp = hsw->dsp;

	if (!FUNC7(hsw, module_id)) {
		FUNC3(dev, "module %d not loaded\n", module_id);
		return 0;
	}

	if (!FUNC6(hsw, module_id)) {
		FUNC5(dev, "module %d already disabled\n", module_id);
		return 0;
	}

	module = FUNC9(dsp, module_id);
	if (module == NULL) {
		FUNC4(dev, "module %d not valid\n", module_id);
		return -ENXIO;
	}

	request.header = FUNC0(IPC_GLB_MODULE_OPERATION) |
			FUNC2(IPC_MODULE_DISABLE) |
			FUNC1(module_id);

	ret = FUNC8(&hsw->ipc, request, NULL);
	if (ret < 0)
		FUNC4(dev, "module disable failed - %d\n", ret);
	else
		module->state = SST_MODULE_STATE_INITIALIZED;

	return ret;
}