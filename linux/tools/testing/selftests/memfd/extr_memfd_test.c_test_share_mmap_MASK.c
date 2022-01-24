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
 int F_SEAL_SHRINK ; 
 int F_SEAL_WRITE ; 
 int MFD_ALLOW_SEALING ; 
 int MFD_CLOEXEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* memfd_str ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mfd_def_size ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,char*) ; 

__attribute__((used)) static void FUNC9(char *banner, char *b_suffix)
{
	int fd;
	void *p;

	FUNC8("%s %s %s\n", memfd_str,  banner, b_suffix);

	fd = FUNC5("kern_memfd_share_mmap",
			    mfd_def_size,
			    MFD_CLOEXEC | MFD_ALLOW_SEALING);
	FUNC2(fd, 0);

	/* shared/writable ref prevents sealing WRITE, but allows others */
	p = FUNC4(fd);
	FUNC6(fd, F_SEAL_WRITE);
	FUNC2(fd, 0);
	FUNC1(fd, F_SEAL_SHRINK);
	FUNC2(fd, F_SEAL_SHRINK);
	FUNC7(p, mfd_def_size);

	/* readable ref allows sealing */
	p = FUNC3(fd);
	FUNC1(fd, F_SEAL_WRITE);
	FUNC2(fd, F_SEAL_WRITE | F_SEAL_SHRINK);
	FUNC7(p, mfd_def_size);

	FUNC0(fd);
}