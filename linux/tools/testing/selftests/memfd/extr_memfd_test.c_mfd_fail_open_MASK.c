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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void FUNC4(int fd, int flags, mode_t mode)
{
	char buf[512];
	int r;

	FUNC3(buf, "/proc/self/fd/%d", fd);
	r = FUNC1(buf, flags, mode);
	if (r >= 0) {
		FUNC2("open(%s) didn't fail as expected\n", buf);
		FUNC0();
	}
}