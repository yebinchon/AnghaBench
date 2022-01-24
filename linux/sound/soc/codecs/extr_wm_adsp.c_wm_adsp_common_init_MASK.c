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
struct wm_adsp {int /*<<< orphan*/  pwr_lock; int /*<<< orphan*/  buffer_list; int /*<<< orphan*/  compr_list; int /*<<< orphan*/  ctl_list; int /*<<< orphan*/  alg_regions; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct wm_adsp*) ; 

__attribute__((used)) static int FUNC3(struct wm_adsp *dsp)
{
	int ret;

	ret = FUNC2(dsp);
	if (ret)
		return ret;

	FUNC0(&dsp->alg_regions);
	FUNC0(&dsp->ctl_list);
	FUNC0(&dsp->compr_list);
	FUNC0(&dsp->buffer_list);

	FUNC1(&dsp->pwr_lock);

	return 0;
}