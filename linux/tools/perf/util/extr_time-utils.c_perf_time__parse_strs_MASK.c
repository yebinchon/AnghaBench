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
struct perf_time_interval {scalar_t__ end; scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int FUNC3 (struct perf_time_interval*,char*) ; 
 char* FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (char*,char) ; 
 char* FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(struct perf_time_interval *ptime,
				 const char *ostr, int size)
{
	const char *cp;
	char *str, *arg, *p;
	int i, num = 0, rc = 0;

	/* Count the commas */
	for (cp = ostr; *cp; cp++)
		num += !!(*cp == ',');

	if (!num)
		return -EINVAL;

	FUNC0(num > size);

	str = FUNC6(ostr);
	if (!str)
		return -ENOMEM;

	/* Split the string and parse each piece, except the last */
	for (i = 0, p = str; i < num - 1; i++) {
		arg = p;
		/* Find next comma, there must be one */
		p = FUNC4(FUNC5(p, ',') + 1);
		/* Skip the value, must not contain space or comma */
		while (*p && !FUNC2(*p)) {
			if (*p++ == ',') {
				rc = -EINVAL;
				goto out;
			}
		}
		/* Split and parse */
		if (*p)
			*p++ = 0;
		rc = FUNC3(ptime + i, arg);
		if (rc < 0)
			goto out;
	}

	/* Parse the last piece */
	rc = FUNC3(ptime + i, p);
	if (rc < 0)
		goto out;

	/* Check there is no overlap */
	for (i = 0; i < num - 1; i++) {
		if (ptime[i].end >= ptime[i + 1].start) {
			rc = -EINVAL;
			goto out;
		}
	}

	rc = num;
out:
	FUNC1(str);

	return rc;
}