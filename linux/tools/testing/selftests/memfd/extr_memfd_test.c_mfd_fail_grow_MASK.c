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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int) ; 
 int mfd_def_size ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(int fd)
{
	int r;

	r = FUNC2(fd, mfd_def_size * 2);
	if (r >= 0) {
		FUNC3("ftruncate(GROW) didn't fail as expected\n");
		FUNC0();
	}

	r = FUNC1(fd,
		      0,
		      0,
		      mfd_def_size * 4);
	if (r >= 0) {
		FUNC3("fallocate(ALLOC) didn't fail as expected\n");
		FUNC0();
	}
}