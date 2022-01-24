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
struct pmu {int hrtimer_interval_ms; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 struct pmu* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,char*,int) ; 

__attribute__((used)) static ssize_t
FUNC2(struct device *dev,
				struct device_attribute *attr,
				char *page)
{
	struct pmu *pmu = FUNC0(dev);

	return FUNC1(page, PAGE_SIZE-1, "%d\n", pmu->hrtimer_interval_ms);
}