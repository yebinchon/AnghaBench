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
struct sst_module_runtime {int id; int /*<<< orphan*/  list; int /*<<< orphan*/  block_list; struct sst_module* module; struct sst_dsp* dsp; } ;
struct sst_module {int /*<<< orphan*/  runtime_list; struct sst_dsp* dsp; } ;
struct sst_dsp {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sst_module_runtime* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct sst_module_runtime *FUNC5(struct sst_module *module,
	int id, void *private)
{
	struct sst_dsp *dsp = module->dsp;
	struct sst_module_runtime *runtime;

	runtime = FUNC1(sizeof(*runtime), GFP_KERNEL);
	if (runtime == NULL)
		return NULL;

	runtime->id = id;
	runtime->dsp = dsp;
	runtime->module = module;
	FUNC0(&runtime->block_list);

	FUNC3(&dsp->mutex);
	FUNC2(&runtime->list, &module->runtime_list);
	FUNC4(&dsp->mutex);

	return runtime;
}