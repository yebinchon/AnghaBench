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
typedef  int /*<<< orphan*/  gzFile ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 char* FUNC1 (char*,char) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

__attribute__((used)) static bool FUNC4(gzFile file, char *buf, size_t n,
					   char **value)
{
	char *sep;

	while (FUNC0(file, buf, n)) {
		if (FUNC3(buf, "CONFIG_", 7))
			continue;

		sep = FUNC1(buf, '=');
		if (!sep)
			continue;

		/* Trim ending '\n' */
		buf[FUNC2(buf) - 1] = '\0';

		/* Split on '=' and ensure that a value is present. */
		*sep = '\0';
		if (!sep[1])
			continue;

		*value = sep + 1;
		return true;
	}

	return false;
}