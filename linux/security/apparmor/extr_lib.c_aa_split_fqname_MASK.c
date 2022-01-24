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
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

char *FUNC4(char *fqname, char **ns_name)
{
	char *name = FUNC2(fqname);

	*ns_name = NULL;
	if (name[0] == ':') {
		char *split = FUNC1(&name[1], ':');
		*ns_name = FUNC0(&name[1]);
		if (split) {
			/* overwrite ':' with \0 */
			*split++ = 0;
			if (FUNC3(split, "//", 2) == 0)
				split += 2;
			name = FUNC0(split);
		} else
			/* a ns name without a following profile is allowed */
			name = NULL;
	}
	if (name && *name == 0)
		name = NULL;

	return name;
}