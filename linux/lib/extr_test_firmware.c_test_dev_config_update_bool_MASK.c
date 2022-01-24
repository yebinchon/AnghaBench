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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,int*) ; 
 int /*<<< orphan*/  test_fw_mutex ; 

__attribute__((used)) static int FUNC3(const char *buf, size_t size,
				       bool *cfg)
{
	int ret;

	FUNC0(&test_fw_mutex);
	if (FUNC2(buf, cfg) < 0)
		ret = -EINVAL;
	else
		ret = size;
	FUNC1(&test_fw_mutex);

	return ret;
}