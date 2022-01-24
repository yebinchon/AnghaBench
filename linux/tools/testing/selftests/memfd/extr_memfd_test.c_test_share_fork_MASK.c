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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  F_SEAL_SEAL ; 
 int /*<<< orphan*/  F_SEAL_WRITE ; 
 int MFD_ALLOW_SEALING ; 
 int MFD_CLOEXEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* memfd_str ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mfd_def_size ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(char *banner, char *b_suffix)
{
	int fd;
	pid_t pid;

	FUNC6("%s %s %s\n", memfd_str, banner, b_suffix);

	fd = FUNC4("kern_memfd_share_fork",
			    mfd_def_size,
			    MFD_CLOEXEC | MFD_ALLOW_SEALING);
	FUNC3(fd, 0);

	pid = FUNC7(0);
	FUNC2(fd, F_SEAL_SEAL);
	FUNC3(fd, F_SEAL_SEAL);

	FUNC5(fd, F_SEAL_WRITE);
	FUNC3(fd, F_SEAL_SEAL);

	FUNC1(pid);

	FUNC5(fd, F_SEAL_WRITE);
	FUNC3(fd, F_SEAL_SEAL);

	FUNC0(fd);
}