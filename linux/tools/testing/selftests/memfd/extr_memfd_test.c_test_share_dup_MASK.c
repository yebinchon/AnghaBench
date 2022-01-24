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
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mfd_def_size ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char*) ; 

__attribute__((used)) static void FUNC7(char *banner, char *b_suffix)
{
	int fd, fd2;

	FUNC6("%s %s %s\n", memfd_str, banner, b_suffix);

	fd = FUNC4("kern_memfd_share_dup",
			    mfd_def_size,
			    MFD_CLOEXEC | MFD_ALLOW_SEALING);
	FUNC3(fd, 0);

	fd2 = FUNC2(fd);
	FUNC3(fd2, 0);

	FUNC1(fd, F_SEAL_WRITE);
	FUNC3(fd, F_SEAL_WRITE);
	FUNC3(fd2, F_SEAL_WRITE);

	FUNC1(fd2, F_SEAL_SHRINK);
	FUNC3(fd, F_SEAL_WRITE | F_SEAL_SHRINK);
	FUNC3(fd2, F_SEAL_WRITE | F_SEAL_SHRINK);

	FUNC1(fd, F_SEAL_SEAL);
	FUNC3(fd, F_SEAL_WRITE | F_SEAL_SHRINK | F_SEAL_SEAL);
	FUNC3(fd2, F_SEAL_WRITE | F_SEAL_SHRINK | F_SEAL_SEAL);

	FUNC5(fd, F_SEAL_GROW);
	FUNC5(fd2, F_SEAL_GROW);
	FUNC5(fd, F_SEAL_SEAL);
	FUNC5(fd2, F_SEAL_SEAL);

	FUNC0(fd2);

	FUNC5(fd, F_SEAL_GROW);
	FUNC0(fd);
}