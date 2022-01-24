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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*) ; 
 char* FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(char **pp, char *end, char **keyp, char **valp)
{
	char *p = *pp;
	char *key, *val;

	while (p < end && *p == '\0')
		p++;
	if (p == end)
		return 0;

	if (end[-1] != '\0') {
		FUNC0("info not properly terminated\n");
		return -EINVAL;
	}

	key = val = p;
	p += FUNC1(p);

	if (valp) {
		FUNC2(&val, "=");
		if (!val)
			val = key + FUNC1(key);
		key = FUNC3(key);
		val = FUNC3(val);
	} else
		key = FUNC3(key);

	if (!FUNC1(key)) {
		FUNC0("zero length info key specified\n");
		return -EINVAL;
	}

	*pp = p;
	*keyp = key;
	if (valp)
		*valp = val;

	return 1;
}