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
struct sst_module_runtime {int /*<<< orphan*/  id; } ;
struct sst_module {int dummy; } ;
struct sst_hsw {struct sst_dsp* dsp; } ;
struct sst_dsp {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct sst_module* FUNC2 (struct sst_dsp*,int) ; 
 int FUNC3 (struct sst_module_runtime*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sst_module_runtime*) ; 
 struct sst_module_runtime* FUNC5 (struct sst_module*,int,int /*<<< orphan*/ *) ; 

struct sst_module_runtime *FUNC6(struct sst_hsw *hsw,
	int mod_id, int offset)
{
	struct sst_dsp *dsp = hsw->dsp;
	struct sst_module *module;
	struct sst_module_runtime *runtime;
	int err;

	module = FUNC2(dsp, mod_id);
	if (module == NULL) {
		FUNC1(dsp->dev, "error: failed to get module %d for pcm\n",
			mod_id);
		return NULL;
	}

	runtime = FUNC5(module, mod_id, NULL);
	if (runtime == NULL) {
		FUNC1(dsp->dev, "error: failed to create module %d runtime\n",
			mod_id);
		return NULL;
	}

	err = FUNC3(runtime, offset);
	if (err < 0) {
		FUNC1(dsp->dev, "error: failed to alloc blocks for module %d runtime\n",
			mod_id);
		FUNC4(runtime);
		return NULL;
	}

	FUNC0(dsp->dev, "runtime id %d created for module %d\n", runtime->id,
		mod_id);
	return runtime;
}