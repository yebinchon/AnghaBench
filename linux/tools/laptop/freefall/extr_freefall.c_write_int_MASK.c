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
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(char *path, int i)
{
	char buf[1024];
	int fd = FUNC2(path, O_RDWR);

	if (fd < 0) {
		FUNC3("open");
		FUNC1(1);
	}

	FUNC4(buf, "%d", i);

	if (FUNC6(fd, buf, FUNC5(buf)) != FUNC5(buf)) {
		FUNC3("write");
		FUNC1(1);
	}

	FUNC0(fd);
}