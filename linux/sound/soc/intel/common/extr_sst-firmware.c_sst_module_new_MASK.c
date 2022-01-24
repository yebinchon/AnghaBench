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
struct sst_module_template {int /*<<< orphan*/  entry; int /*<<< orphan*/  persistent_size; int /*<<< orphan*/  scratch_size; int /*<<< orphan*/  id; } ;
struct sst_module {int /*<<< orphan*/  list; int /*<<< orphan*/  runtime_list; int /*<<< orphan*/  block_list; int /*<<< orphan*/  state; int /*<<< orphan*/  entry; int /*<<< orphan*/  persistent_size; int /*<<< orphan*/  scratch_size; struct sst_fw* sst_fw; struct sst_dsp* dsp; int /*<<< orphan*/  id; } ;
struct sst_fw {struct sst_dsp* dsp; } ;
struct sst_dsp {int /*<<< orphan*/  mutex; int /*<<< orphan*/  module_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SST_MODULE_STATE_UNLOADED ; 
 struct sst_module* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct sst_module *FUNC5(struct sst_fw *sst_fw,
	struct sst_module_template *template, void *private)
{
	struct sst_dsp *dsp = sst_fw->dsp;
	struct sst_module *sst_module;

	sst_module = FUNC1(sizeof(*sst_module), GFP_KERNEL);
	if (sst_module == NULL)
		return NULL;

	sst_module->id = template->id;
	sst_module->dsp = dsp;
	sst_module->sst_fw = sst_fw;
	sst_module->scratch_size = template->scratch_size;
	sst_module->persistent_size = template->persistent_size;
	sst_module->entry = template->entry;
	sst_module->state = SST_MODULE_STATE_UNLOADED;

	FUNC0(&sst_module->block_list);
	FUNC0(&sst_module->runtime_list);

	FUNC3(&dsp->mutex);
	FUNC2(&sst_module->list, &dsp->module_list);
	FUNC4(&dsp->mutex);

	return sst_module;
}