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
struct omap_mcbsp_st_data {scalar_t__ running; } ;
struct omap_mcbsp {int /*<<< orphan*/  free; struct omap_mcbsp_st_data* st_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omap_mcbsp*) ; 

int FUNC1(struct omap_mcbsp *mcbsp)
{
	struct omap_mcbsp_st_data *st_data = mcbsp->st_data;

	if (st_data->running) {
		if (!mcbsp->free) {
			FUNC0(mcbsp);
			st_data->running = 0;
		}
	}

	return 0;
}