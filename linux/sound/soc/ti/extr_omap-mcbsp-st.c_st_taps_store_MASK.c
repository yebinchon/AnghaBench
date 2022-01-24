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
struct omap_mcbsp_st_data {int* taps; int nr_taps; } ;
struct omap_mcbsp {int /*<<< orphan*/  lock; struct omap_mcbsp_st_data* st_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 struct omap_mcbsp* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,char*,int*,int*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			     struct device_attribute *attr,
			     const char *buf, size_t size)
{
	struct omap_mcbsp *mcbsp = FUNC0(dev);
	struct omap_mcbsp_st_data *st_data = mcbsp->st_data;
	int val, tmp, status, i = 0;

	FUNC2(&mcbsp->lock);
	FUNC1(st_data->taps, 0, sizeof(st_data->taps));
	st_data->nr_taps = 0;

	do {
		status = FUNC4(buf, "%d%n", &val, &tmp);
		if (status < 0 || status == 0) {
			size = -EINVAL;
			goto out;
		}
		if (val < -32768 || val > 32767) {
			size = -EINVAL;
			goto out;
		}
		st_data->taps[i++] = val;
		buf += tmp;
		if (*buf != ',')
			break;
		buf++;
	} while (1);

	st_data->nr_taps = i;

out:
	FUNC3(&mcbsp->lock);

	return size;
}