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
 int F_SEAL_GROW ; 
 int F_SEAL_SEAL ; 
 int F_SEAL_SHRINK ; 
 int F_SEAL_WRITE ; 
 int MFD_ALLOW_SEALING ; 
 int MFD_CLOEXEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* memfd_str ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mfd_def_size ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static void FUNC6(void)
{
	int fd;

	FUNC5("%s BASIC\n", memfd_str);

	fd = FUNC3("kern_memfd_basic",
			    mfd_def_size,
			    MFD_CLOEXEC | MFD_ALLOW_SEALING);

	/* add basic seals */
	FUNC2(fd, 0);
	FUNC1(fd, F_SEAL_SHRINK |
				 F_SEAL_WRITE);
	FUNC2(fd, F_SEAL_SHRINK |
				 F_SEAL_WRITE);

	/* add them again */
	FUNC1(fd, F_SEAL_SHRINK |
				 F_SEAL_WRITE);
	FUNC2(fd, F_SEAL_SHRINK |
				 F_SEAL_WRITE);

	/* add more seals and seal against sealing */
	FUNC1(fd, F_SEAL_GROW | F_SEAL_SEAL);
	FUNC2(fd, F_SEAL_SHRINK |
				 F_SEAL_GROW |
				 F_SEAL_WRITE |
				 F_SEAL_SEAL);

	/* verify that sealing no longer works */
	FUNC4(fd, F_SEAL_GROW);
	FUNC4(fd, 0);

	FUNC0(fd);

	/* verify sealing does not work without MFD_ALLOW_SEALING */
	fd = FUNC3("kern_memfd_basic",
			    mfd_def_size,
			    MFD_CLOEXEC);
	FUNC2(fd, F_SEAL_SEAL);
	FUNC4(fd, F_SEAL_SHRINK |
			       F_SEAL_GROW |
			       F_SEAL_WRITE);
	FUNC2(fd, F_SEAL_SEAL);
	FUNC0(fd);
}