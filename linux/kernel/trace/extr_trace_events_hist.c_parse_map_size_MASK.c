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
 unsigned long TRACING_MAP_BITS_MAX ; 
 unsigned long TRACING_MAP_BITS_MIN ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char**,char*) ; 

__attribute__((used)) static int FUNC4(char *str)
{
	unsigned long size, map_bits;
	int ret;

	FUNC3(&str, "=");
	if (!str) {
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC1(str, 0, &size);
	if (ret)
		goto out;

	map_bits = FUNC0(FUNC2(size));
	if (map_bits < TRACING_MAP_BITS_MIN ||
	    map_bits > TRACING_MAP_BITS_MAX)
		ret = -EINVAL;
	else
		ret = map_bits;
 out:
	return ret;
}