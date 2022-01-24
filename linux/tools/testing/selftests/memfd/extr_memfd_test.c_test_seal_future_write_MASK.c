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
 int /*<<< orphan*/  F_SEAL_FUTURE_WRITE ; 
 int MFD_ALLOW_SEALING ; 
 int MFD_CLOEXEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* memfd_str ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  mfd_def_size ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

__attribute__((used)) static void FUNC11(void)
{
	int fd, fd2;
	void *p;

	FUNC10("%s SEAL-FUTURE-WRITE\n", memfd_str);

	fd = FUNC4("kern_memfd_seal_future_write",
			    mfd_def_size,
			    MFD_CLOEXEC | MFD_ALLOW_SEALING);

	p = FUNC3(fd);

	FUNC2(fd, 0);

	FUNC1(fd, F_SEAL_FUTURE_WRITE);
	FUNC2(fd, F_SEAL_FUTURE_WRITE);

	/* read should pass, writes should fail */
	FUNC5(fd);
	FUNC6(fd);
	FUNC8(fd);

	fd2 = FUNC7(fd);
	/* read should pass, writes should still fail */
	FUNC5(fd2);
	FUNC6(fd2);
	FUNC8(fd2);

	FUNC9(p, mfd_def_size);
	FUNC0(fd2);
	FUNC0(fd);
}