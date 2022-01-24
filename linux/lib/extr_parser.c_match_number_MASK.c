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
typedef  int /*<<< orphan*/  substring_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ERANGE ; 
 scalar_t__ INT_MAX ; 
 scalar_t__ INT_MIN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 long FUNC2 (char*,char**,int) ; 

__attribute__((used)) static int FUNC3(substring_t *s, int *result, int base)
{
	char *endp;
	char *buf;
	int ret;
	long val;

	buf = FUNC1(s);
	if (!buf)
		return -ENOMEM;

	ret = 0;
	val = FUNC2(buf, &endp, base);
	if (endp == buf)
		ret = -EINVAL;
	else if (val < (long)INT_MIN || val > (long)INT_MAX)
		ret = -ERANGE;
	else
		*result = (int) val;
	FUNC0(buf);
	return ret;
}