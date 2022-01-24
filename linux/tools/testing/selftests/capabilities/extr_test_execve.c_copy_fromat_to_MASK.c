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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int O_CREAT ; 
 int O_EXCL ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int,int) ; 
 int FUNC3 (int,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(int fromfd, const char *fromname, const char *toname)
{
	int from = FUNC3(fromfd, fromname, O_RDONLY);
	if (from == -1)
		FUNC1("open copy source - %s\n", FUNC5(errno));

	int to = FUNC2(toname, O_CREAT | O_WRONLY | O_EXCL, 0700);

	while (true) {
		char buf[4096];
		ssize_t sz = FUNC4(from, buf, sizeof(buf));
		if (sz == 0)
			break;
		if (sz < 0)
			FUNC1("read - %s\n", FUNC5(errno));

		if (FUNC6(to, buf, sz) != sz)
			/* no short writes on tmpfs */
			FUNC1("write - %s\n", FUNC5(errno));
	}

	FUNC0(from);
	FUNC0(to);
}