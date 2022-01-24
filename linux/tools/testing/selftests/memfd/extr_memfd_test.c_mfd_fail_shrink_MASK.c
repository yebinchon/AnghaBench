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
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,int) ; 
 int mfd_def_size ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(int fd)
{
	int r;

	r = FUNC1(fd, mfd_def_size / 2);
	if (r >= 0) {
		FUNC3("ftruncate(SHRINK) didn't fail as expected\n");
		FUNC0();
	}

	FUNC2(fd,
		      O_RDWR | O_CREAT | O_TRUNC,
		      S_IRUSR | S_IWUSR);
}