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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int mfd_def_size ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(int fd)
{
	int r, fd2;

	r = FUNC2(fd, mfd_def_size / 2);
	if (r < 0) {
		FUNC5("ftruncate(SHRINK) failed: %m\n");
		FUNC0();
	}

	FUNC4(fd, mfd_def_size / 2);

	fd2 = FUNC3(fd,
			      O_RDWR | O_CREAT | O_TRUNC,
			      S_IRUSR | S_IWUSR);
	FUNC1(fd2);

	FUNC4(fd, 0);
}