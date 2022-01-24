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
 int F_SEAL_WRITE ; 
 int MFD_ALLOW_SEALING ; 
 int MFD_CLOEXEC ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int global_mfd ; 
 void* global_p ; 
 int hugetlbfs_test ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (void*,char*,unsigned long) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 void* FUNC9 (int) ; 
 void* FUNC10 (int) ; 
 int FUNC11 (char*,unsigned long,int) ; 
 unsigned long mfd_def_size ; 
 int FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int FUNC14 (int,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 

int FUNC17(int argc, char **argv)
{
	char *zero;
	int fd, mfd, r;
	void *p;
	int was_sealed;
	pid_t pid;

	if (argc < 2) {
		FUNC13("error: please pass path to file in fuse_mnt mount-point\n");
		FUNC0();
	}

	if (argc >= 3) {
		if (!FUNC16(argv[2], "hugetlbfs")) {
			unsigned long hpage_size = FUNC3();

			if (!hpage_size) {
				FUNC13("Unable to determine huge page size\n");
				FUNC0();
			}

			hugetlbfs_test = 1;
			mfd_def_size = hpage_size * 2;
		} else {
			FUNC13("Unknown option: %s\n", argv[2]);
			FUNC0();
		}
	}

	zero = FUNC1(sizeof(*zero), mfd_def_size);

	/* open FUSE memfd file for GUP testing */
	FUNC13("opening: %s\n", argv[1]);
	fd = FUNC12(argv[1], O_RDONLY | O_CLOEXEC);
	if (fd < 0) {
		FUNC13("cannot open(\"%s\"): %m\n", argv[1]);
		FUNC0();
	}

	/* create new memfd-object */
	mfd = FUNC11("kern_memfd_fuse",
			     mfd_def_size,
			     MFD_CLOEXEC | MFD_ALLOW_SEALING);

	/* mmap memfd-object for writing */
	p = FUNC10(mfd);

	/* pass mfd+mapping to a separate sealing-thread which tries to seal
	 * the memfd objects with SEAL_WRITE while we write into it */
	global_mfd = mfd;
	global_p = p;
	pid = FUNC15();

	/* Use read() on the FUSE file to read into our memory-mapped memfd
	 * object. This races the other thread which tries to seal the
	 * memfd-object.
	 * If @fd is on the memfd-fake-FUSE-FS, the read() is delayed by 1s.
	 * This guarantees that the receive-buffer is pinned for 1s until the
	 * data is written into it. The racing ADD_SEALS should thus fail as
	 * the pages are still pinned. */
	r = FUNC14(fd, p, mfd_def_size);
	if (r < 0) {
		FUNC13("read() failed: %m\n");
		FUNC0();
	} else if (!r) {
		FUNC13("unexpected EOF on read()\n");
		FUNC0();
	}

	was_sealed = FUNC7(mfd) & F_SEAL_WRITE;

	/* Wait for sealing-thread to finish and verify that it
	 * successfully sealed the file after the second try. */
	FUNC5(pid);
	FUNC8(mfd, F_SEAL_WRITE);

	/* *IF* the memfd-object was sealed at the time our read() returned,
	 * then the kernel did a page-replacement or canceled the read() (or
	 * whatever magic it did..). In that case, the memfd object is still
	 * all zero.
	 * In case the memfd-object was *not* sealed, the read() was successfull
	 * and the memfd object must *not* be all zero.
	 * Note that in real scenarios, there might be a mixture of both, but
	 * in this test-cases, we have explicit 200ms delays which should be
	 * enough to avoid any in-flight writes. */

	p = FUNC9(mfd);
	if (was_sealed && FUNC6(p, zero, mfd_def_size)) {
		FUNC13("memfd sealed during read() but data not discarded\n");
		FUNC0();
	} else if (!was_sealed && !FUNC6(p, zero, mfd_def_size)) {
		FUNC13("memfd sealed after read() but data discarded\n");
		FUNC0();
	}

	FUNC2(mfd);
	FUNC2(fd);

	FUNC13("fuse: DONE\n");
	FUNC4(zero);

	return 0;
}