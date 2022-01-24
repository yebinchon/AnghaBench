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
struct omap_mcbsp_st_data {int nr_taps; int /*<<< orphan*/ * taps; } ;
struct omap_mcbsp {int /*<<< orphan*/  lock; struct omap_mcbsp_st_data* st_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 struct omap_mcbsp* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			    struct device_attribute *attr, char *buf)
{
	struct omap_mcbsp *mcbsp = FUNC0(dev);
	struct omap_mcbsp_st_data *st_data = mcbsp->st_data;
	ssize_t status = 0;
	int i;

	FUNC1(&mcbsp->lock);
	for (i = 0; i < st_data->nr_taps; i++)
		status += FUNC3(&buf[status], (i ? ", %d" : "%d"),
				  st_data->taps[i]);
	if (i)
		status += FUNC3(&buf[status], "\n");
	FUNC2(&mcbsp->lock);

	return status;
}