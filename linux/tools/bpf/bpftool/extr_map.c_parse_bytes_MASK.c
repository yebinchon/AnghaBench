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
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 unsigned char FUNC2 (char*,char**,unsigned int) ; 

__attribute__((used)) static char **FUNC3(char **argv, const char *name, unsigned char *val,
			  unsigned int n)
{
	unsigned int i = 0, base = 0;
	char *endptr;

	if (FUNC0(*argv, "hex")) {
		base = 16;
		argv++;
	}

	while (i < n && argv[i]) {
		val[i] = FUNC2(argv[i], &endptr, base);
		if (*endptr) {
			FUNC1("error parsing byte: %s", argv[i]);
			return NULL;
		}
		i++;
	}

	if (i != n) {
		FUNC1("%s expected %d bytes got %d", name, n, i);
		return NULL;
	}

	return argv + i;
}