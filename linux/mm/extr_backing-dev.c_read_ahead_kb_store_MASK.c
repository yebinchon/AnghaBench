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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct backing_dev_info {unsigned long ra_pages; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 struct backing_dev_info* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char const*,int,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				  struct device_attribute *attr,
				  const char *buf, size_t count)
{
	struct backing_dev_info *bdi = FUNC0(dev);
	unsigned long read_ahead_kb;
	ssize_t ret;

	ret = FUNC1(buf, 10, &read_ahead_kb);
	if (ret < 0)
		return ret;

	bdi->ra_pages = read_ahead_kb >> (PAGE_SHIFT - 10);

	return count;
}