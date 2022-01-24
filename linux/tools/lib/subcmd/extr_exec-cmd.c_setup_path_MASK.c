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
 int /*<<< orphan*/  FUNC0 (char**,char*) ; 
 char* argv0_path ; 
 int /*<<< orphan*/  FUNC1 (char**,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 () ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

void FUNC6(void)
{
	const char *old_path = FUNC4("PATH");
	char *new_path = NULL;
	char *tmp = FUNC3();

	FUNC0(&new_path, tmp);
	FUNC0(&new_path, argv0_path);
	FUNC2(tmp);

	if (old_path)
		FUNC1(&new_path, old_path);
	else
		FUNC1(&new_path, "/usr/local/bin:/usr/bin:/bin");

	FUNC5("PATH", new_path, 1);

	FUNC2(new_path);
}