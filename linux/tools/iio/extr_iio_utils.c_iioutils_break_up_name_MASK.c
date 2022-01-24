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
 int FUNC0 (char**) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC1 (char**,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char** iio_direction ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 char* FUNC4 (char const*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int) ; 
 char* FUNC7 (char*,char*) ; 

int FUNC8(const char *full_name, char **generic_name)
{
	char *current;
	char *w, *r;
	char *working, *prefix = "";
	int i, ret;

	for (i = 0; i < FUNC0(iio_direction); i++)
		if (!FUNC6(full_name, iio_direction[i],
			     FUNC5(iio_direction[i]))) {
			prefix = iio_direction[i];
			break;
		}

	current = FUNC4(full_name + FUNC5(prefix) + 1);
	if (!current)
		return -ENOMEM;

	working = FUNC7(current, "_\0");
	if (!working) {
		FUNC2(current);
		return -EINVAL;
	}

	w = working;
	r = working;

	while (*r != '\0') {
		if (!FUNC3(*r)) {
			*w = *r;
			w++;
		}

		r++;
	}
	*w = '\0';
	ret = FUNC1(generic_name, "%s_%s", prefix, working);
	FUNC2(current);

	return (ret == -1) ? -ENOMEM : 0;
}