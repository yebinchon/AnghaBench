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
struct utsname {int /*<<< orphan*/  release; } ;

/* Variables and functions */
 int /*<<< orphan*/  R_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC5 (struct utsname*) ; 

int
FUNC6(unsigned int *puint, char *str,
		     size_t str_size)
{
	struct utsname utsname;
	int version, patchlevel, sublevel, err;
	bool int_ver_ready = false;

	if (FUNC0("/proc/version_signature", R_OK) == 0)
		if (!FUNC1(puint))
			int_ver_ready = true;

	if (FUNC5(&utsname))
		return -1;

	if (str && str_size) {
		FUNC4(str, utsname.release, str_size);
		str[str_size - 1] = '\0';
	}

	if (!puint || int_ver_ready)
		return 0;

	err = FUNC3(utsname.release, "%d.%d.%d",
		     &version, &patchlevel, &sublevel);

	if (err != 3) {
		FUNC2("Unable to get kernel version from uname '%s'\n",
			 utsname.release);
		return -1;
	}

	*puint = (version << 16) + (patchlevel << 8) + sublevel;
	return 0;
}