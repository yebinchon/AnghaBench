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
struct sst_dsp {int /*<<< orphan*/  mutex; int /*<<< orphan*/  scratch_block_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sst_dsp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct sst_dsp *dsp)
{
	FUNC1(&dsp->mutex);
	FUNC0(dsp, &dsp->scratch_block_list);
	FUNC2(&dsp->mutex);
}