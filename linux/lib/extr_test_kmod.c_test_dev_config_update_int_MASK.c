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
struct kmod_test_device {int /*<<< orphan*/  config_mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 long INT_MAX ; 
 long INT_MIN ; 
 int FUNC0 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct kmod_test_device *test_dev,
				      const char *buf, size_t size,
				      int *config)
{
	int ret;
	long new;

	ret = FUNC0(buf, 10, &new);
	if (ret)
		return ret;

	if (new < INT_MIN || new > INT_MAX)
		return -EINVAL;

	FUNC1(&test_dev->config_mutex);
	*config = new;
	FUNC2(&test_dev->config_mutex);
	/* Always return full write size even if we didn't consume all */
	return size;
}