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
struct omap_mcbsp_st_data {int enabled; } ;
struct omap_mcbsp {int /*<<< orphan*/  lock; struct omap_mcbsp_st_data* st_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct omap_mcbsp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct omap_mcbsp *mcbsp)
{
	struct omap_mcbsp_st_data *st_data = mcbsp->st_data;

	if (!st_data)
		return -ENODEV;

	FUNC1(&mcbsp->lock);
	st_data->enabled = 1;
	FUNC0(mcbsp);
	FUNC2(&mcbsp->lock);

	return 0;
}