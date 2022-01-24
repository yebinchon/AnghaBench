#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ level; } ;
struct TYPE_3__ {scalar_t__ level; } ;
struct iw_spy_data {int spy_number; int* spy_thr_under; TYPE_2__ spy_thr_low; TYPE_1__ spy_thr_high; int /*<<< orphan*/ * spy_stat; int /*<<< orphan*/ * spy_address; } ;
struct iw_quality {scalar_t__ level; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 struct iw_spy_data* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct iw_spy_data*,unsigned char*,struct iw_quality*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct iw_quality*,int) ; 

void FUNC4(struct net_device *	dev,
			 unsigned char *	address,
			 struct iw_quality *	wstats)
{
	struct iw_spy_data *	spydata = FUNC1(dev);
	int			i;
	int			match = -1;

	/* Make sure driver is not buggy or using the old API */
	if (!spydata)
		return;

	/* Update all records that match */
	for (i = 0; i < spydata->spy_number; i++)
		if (FUNC0(address, spydata->spy_address[i])) {
			FUNC3(&(spydata->spy_stat[i]), wstats,
			       sizeof(struct iw_quality));
			match = i;
		}

	/* Generate an event if we cross the spy threshold.
	 * To avoid event storms, we have a simple hysteresis : we generate
	 * event only when we go under the low threshold or above the
	 * high threshold. */
	if (match >= 0) {
		if (spydata->spy_thr_under[match]) {
			if (wstats->level > spydata->spy_thr_high.level) {
				spydata->spy_thr_under[match] = 0;
				FUNC2(dev, spydata,
						     address, wstats);
			}
		} else {
			if (wstats->level < spydata->spy_thr_low.level) {
				spydata->spy_thr_under[match] = 1;
				FUNC2(dev, spydata,
						     address, wstats);
			}
		}
	}
}