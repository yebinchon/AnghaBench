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
struct wm_adsp {int /*<<< orphan*/  boot_work; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm_adsp_boot_work ; 
 int FUNC1 (struct wm_adsp*) ; 
 int /*<<< orphan*/  wm_halo_ops ; 

int FUNC2(struct wm_adsp *dsp)
{
	int ret;

	ret = FUNC1(dsp);
	if (ret)
		return ret;

	dsp->ops = &wm_halo_ops;

	FUNC0(&dsp->boot_work, wm_adsp_boot_work);

	return 0;
}