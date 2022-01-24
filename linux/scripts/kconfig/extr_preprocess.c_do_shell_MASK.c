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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 char* FUNC5 (char*) ; 

__attribute__((used)) static char *FUNC6(int argc, char *argv[])
{
	FILE *p;
	char buf[256];
	char *cmd;
	size_t nread;
	int i;

	cmd = argv[0];

	p = FUNC4(cmd, "r");
	if (!p) {
		FUNC3(cmd);
		FUNC0(1);
	}

	nread = FUNC1(buf, 1, sizeof(buf), p);
	if (nread == sizeof(buf))
		nread--;

	/* remove trailing new lines */
	while (nread > 0 && buf[nread - 1] == '\n')
		nread--;

	buf[nread] = 0;

	/* replace a new line with a space */
	for (i = 0; i < nread; i++) {
		if (buf[i] == '\n')
			buf[i] = ' ';
	}

	if (FUNC2(p) == -1) {
		FUNC3(cmd);
		FUNC0(1);
	}

	return FUNC5(buf);
}