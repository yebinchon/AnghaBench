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
 int F_SEAL_SEAL ; 
 int F_SEAL_SHRINK ; 
 int F_SEAL_WRITE ; 
 int MFD_ALLOW_SEALING ; 
 int MFD_CLOEXEC ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* memfd_str ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mfd_def_size ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char*) ; 

__attribute__((used)) static void FUNC7(char *banner, char *b_suffix)
{
	int fd, fd2;

	FUNC6("%s %s %s\n", memfd_str, banner, b_suffix);

	fd = FUNC3("kern_memfd_share_open",
			    mfd_def_size,
			    MFD_CLOEXEC | MFD_ALLOW_SEALING);
	FUNC2(fd, 0);

	fd2 = FUNC4(fd, O_RDWR, 0);
	FUNC1(fd, F_SEAL_WRITE);
	FUNC2(fd, F_SEAL_WRITE);
	FUNC2(fd2, F_SEAL_WRITE);

	FUNC1(fd2, F_SEAL_SHRINK);
	FUNC2(fd, F_SEAL_WRITE | F_SEAL_SHRINK);
	FUNC2(fd2, F_SEAL_WRITE | F_SEAL_SHRINK);

	FUNC0(fd);
	fd = FUNC4(fd2, O_RDONLY, 0);

	FUNC5(fd, F_SEAL_SEAL);
	FUNC2(fd, F_SEAL_WRITE | F_SEAL_SHRINK);
	FUNC2(fd2, F_SEAL_WRITE | F_SEAL_SHRINK);

	FUNC0(fd2);
	fd2 = FUNC4(fd, O_RDWR, 0);

	FUNC1(fd2, F_SEAL_SEAL);
	FUNC2(fd, F_SEAL_WRITE | F_SEAL_SHRINK | F_SEAL_SEAL);
	FUNC2(fd2, F_SEAL_WRITE | F_SEAL_SHRINK | F_SEAL_SEAL);

	FUNC0(fd2);
	FUNC0(fd);
}