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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char**,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC5 (char*,char) ; 
 int FUNC6 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC7(int *target, const char *msg)
{
	char *buf = FUNC4(0), *p;
	size_t dummy = 0;
	int tmp;

	FUNC0(stdout, "\n%s: ", msg);
	if (FUNC2(&buf, &dummy, stdin) < 0)
		return;

	p = FUNC5(buf, '\n');
	if (p)
		*p = 0;

	p = buf;
	while(*p) {
		if (!FUNC3(*p))
			goto out_free;
		p++;
	}
	tmp = FUNC6(buf, NULL, 10);
	*target = tmp;
out_free:
	FUNC1(buf);
}