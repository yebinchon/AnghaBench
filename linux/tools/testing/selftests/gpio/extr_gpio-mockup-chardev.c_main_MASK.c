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
struct gpiochip_info {int lines; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpiochip_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct gpiochip_info*,int) ; 
 struct gpiochip_info* FUNC4 (char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char*,char*) ; 

int FUNC8(int argc, char *argv[])
{
	char *prefix;
	int valid;
	struct gpiochip_info *cinfo;
	struct gpiochip_info *current;
	int i;
	int ret;

	if (argc < 3) {
		FUNC5("Usage: %s prefix is_valid", argv[0]);
		FUNC0(EXIT_FAILURE);
	}

	prefix = argv[1];
	valid = FUNC7(argv[2], "true") == 0 ? 1 : 0;

	FUNC5("Test gpiochip %s: ", prefix);
	cinfo = FUNC4(prefix, &ret);
	if (!cinfo) {
		if (!valid && ret == 0) {
			FUNC5("Invalid test successful\n");
			ret = 0;
			goto out;
		} else {
			ret = -EINVAL;
			goto out;
		}
	} else if (cinfo && !valid) {
		ret = -EINVAL;
		goto out;
	}
	current = cinfo;
	for (i = 0; i < ret; i++) {
		FUNC3(current, 0);
		FUNC3(current, current->lines - 1);
		FUNC3(current, FUNC6() % current->lines);
		current++;
	}
	ret = 0;
	FUNC5("successful\n");

out:
	if (ret)
		FUNC1(stderr, "gpio<%s> test failed\n", prefix);

	if (cinfo)
		FUNC2(cinfo);

	if (ret)
		FUNC0(EXIT_FAILURE);

	return ret;
}