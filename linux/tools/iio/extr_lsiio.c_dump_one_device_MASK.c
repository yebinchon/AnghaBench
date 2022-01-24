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

/* Variables and functions */
 int EINVAL ; 
 int IIO_MAX_NAME_LENGTH ; 
 scalar_t__ VERBLEVEL_SENSORS ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  iio_dir ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int FUNC2 (char*,char const*,char*) ; 
 int FUNC3 (char const*,char*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  type_device ; 
 scalar_t__ verblevel ; 

__attribute__((used)) static int FUNC5(const char *dev_dir_name)
{
	char name[IIO_MAX_NAME_LENGTH];
	int dev_idx;
	int ret;

	ret = FUNC3(dev_dir_name + FUNC4(iio_dir) + FUNC4(type_device), "%i",
		     &dev_idx);
	if (ret != 1)
		return -EINVAL;

	ret = FUNC2("name", dev_dir_name, name);
	if (ret < 0)
		return ret;

	FUNC1("Device %03d: %s\n", dev_idx, name);

	if (verblevel >= VERBLEVEL_SENSORS)
		return FUNC0(dev_dir_name);

	return 0;
}