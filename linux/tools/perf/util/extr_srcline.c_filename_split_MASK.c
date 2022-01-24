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
 char* FUNC0 (char*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 unsigned int FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(char *filename, unsigned int *line_nr)
{
	char *sep;

	sep = FUNC0(filename, '\n');
	if (sep)
		*sep = '\0';

	if (!FUNC1(filename, "??:0"))
		return 0;

	sep = FUNC0(filename, ':');
	if (sep) {
		*sep++ = '\0';
		*line_nr = FUNC2(sep, NULL, 0);
		return 1;
	}

	return 0;
}