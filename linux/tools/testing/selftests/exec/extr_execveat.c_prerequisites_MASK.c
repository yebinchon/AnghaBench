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
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
	int fd;
	const char *script = "#!/bin/sh\nexit $*\n";

	/* Create ephemeral copies of files */
	FUNC1("execveat", "execveat.ephemeral");
	FUNC1("execveat", "execveat.path.ephemeral");
	FUNC1("script", "script.ephemeral");
	FUNC2("subdir.ephemeral", 0755);

	fd = FUNC3("subdir.ephemeral/script", O_RDWR|O_CREAT|O_TRUNC, 0755);
	FUNC5(fd, script, FUNC4(script));
	FUNC0(fd);
}