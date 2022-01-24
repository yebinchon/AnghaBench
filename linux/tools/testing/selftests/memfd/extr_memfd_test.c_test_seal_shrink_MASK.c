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
 int /*<<< orphan*/  F_SEAL_SHRINK ; 
 int MFD_ALLOW_SEALING ; 
 int MFD_CLOEXEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* memfd_str ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  mfd_def_size ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static void FUNC10(void)
{
	int fd;

	FUNC9("%s SEAL-SHRINK\n", memfd_str);

	fd = FUNC5("kern_memfd_seal_shrink",
			    mfd_def_size,
			    MFD_CLOEXEC | MFD_ALLOW_SEALING);
	FUNC4(fd, 0);
	FUNC1(fd, F_SEAL_SHRINK);
	FUNC4(fd, F_SEAL_SHRINK);

	FUNC6(fd);
	FUNC7(fd);
	FUNC8(fd);
	FUNC2(fd);
	FUNC3(fd);

	FUNC0(fd);
}