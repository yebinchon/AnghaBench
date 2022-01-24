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
struct sst_module_runtime {int /*<<< orphan*/  list; struct sst_dsp* dsp; } ;
struct sst_dsp {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sst_module_runtime*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct sst_module_runtime *runtime)
{
	struct sst_dsp *dsp = runtime->dsp;

	FUNC2(&dsp->mutex);
	FUNC1(&runtime->list);
	FUNC3(&dsp->mutex);

	FUNC0(runtime);
}