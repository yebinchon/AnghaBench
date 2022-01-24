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
 int /*<<< orphan*/  FUNC0 (char) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(char *line, const char **namep, char **rawp)
{
	char tmp, *name = FUNC1(line);

	if (name[0] == '\0')
		return -1;

	*rawp = name + 1;

	while ((*rawp)[0] != '\0' && !FUNC0((*rawp)[0]))
		++*rawp;

	tmp = (*rawp)[0];
	(*rawp)[0] = '\0';
	*namep = FUNC2(name);

	if (*namep == NULL)
		goto out;

	(*rawp)[0] = tmp;
	*rawp = FUNC3(*rawp);

	return 0;

out:
	return -1;
}