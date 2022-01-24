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
 int /*<<< orphan*/  F_SEAL_WRITE ; 
 int /*<<< orphan*/  global_mfd ; 
 int /*<<< orphan*/  global_p ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mfd_def_size ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(void *arg)
{
	int sig, r;

	/*
	 * This thread first waits 200ms so any pending operation in the parent
	 * is correctly started. After that, it tries to seal @global_mfd as
	 * SEAL_WRITE. This _must_ fail as the parent thread has a read() into
	 * that memory mapped object still ongoing.
	 * We then wait one more second and try sealing again. This time it
	 * must succeed as there shouldn't be anyone else pinning the pages.
	 */

	/* wait 200ms for FUSE-request to be active */
	FUNC5(200000);

	/* unmount mapping before sealing to avoid i_mmap_writable failures */
	FUNC2(global_p, mfd_def_size);

	/* Try sealing the global file; expect EBUSY or success. Current
	 * kernels will never succeed, but in the future, kernels might
	 * implement page-replacements or other fancy ways to avoid racing
	 * writes. */
	r = FUNC1(global_mfd, F_SEAL_WRITE);
	if (r >= 0) {
		FUNC3("HURRAY! This kernel fixed GUP races!\n");
	} else {
		/* wait 1s more so the FUSE-request is done */
		FUNC4(1);

		/* try sealing the global file again */
		FUNC0(global_mfd, F_SEAL_WRITE);
	}

	return 0;
}