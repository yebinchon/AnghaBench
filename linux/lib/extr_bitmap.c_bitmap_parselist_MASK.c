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
struct region {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 long FUNC2 (struct region*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char const*,struct region*) ; 
 long FUNC5 (struct region*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long*,int) ; 

int FUNC7(const char *buf, unsigned long *maskp, int nmaskbits)
{
	struct region r;
	long ret;

	FUNC6(maskp, nmaskbits);

	while (buf) {
		buf = FUNC3(buf);
		if (buf == NULL)
			return 0;

		buf = FUNC4(buf, &r);
		if (FUNC0(buf))
			return FUNC1(buf);

		ret = FUNC2(&r);
		if (ret)
			return ret;

		ret = FUNC5(&r, maskp, nmaskbits);
		if (ret)
			return ret;
	}

	return 0;
}