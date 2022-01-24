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
typedef  int ssize_t ;

/* Variables and functions */
 int FALLOC_FL_KEEP_SIZE ; 
 int FALLOC_FL_PUNCH_HOLE ; 
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hugetlbfs_test ; 
 int /*<<< orphan*/  mfd_def_size ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,char*,int) ; 

__attribute__((used)) static void FUNC7(int fd)
{
	ssize_t l;
	void *p;
	int r;

	/*
	 * huegtlbfs does not support write, but we want to
	 * verify everything else here.
	 */
	if (!hugetlbfs_test) {
		/* verify write() succeeds */
		l = FUNC6(fd, "\0\0\0\0", 4);
		if (l != 4) {
			FUNC5("write() failed: %m\n");
			FUNC0();
		}
	}

	/* verify PROT_READ | PROT_WRITE is allowed */
	p = FUNC2(NULL,
		 mfd_def_size,
		 PROT_READ | PROT_WRITE,
		 MAP_SHARED,
		 fd,
		 0);
	if (p == MAP_FAILED) {
		FUNC5("mmap() failed: %m\n");
		FUNC0();
	}
	*(char *)p = 0;
	FUNC4(p, mfd_def_size);

	/* verify PROT_WRITE is allowed */
	p = FUNC2(NULL,
		 mfd_def_size,
		 PROT_WRITE,
		 MAP_SHARED,
		 fd,
		 0);
	if (p == MAP_FAILED) {
		FUNC5("mmap() failed: %m\n");
		FUNC0();
	}
	*(char *)p = 0;
	FUNC4(p, mfd_def_size);

	/* verify PROT_READ with MAP_SHARED is allowed and a following
	 * mprotect(PROT_WRITE) allows writing */
	p = FUNC2(NULL,
		 mfd_def_size,
		 PROT_READ,
		 MAP_SHARED,
		 fd,
		 0);
	if (p == MAP_FAILED) {
		FUNC5("mmap() failed: %m\n");
		FUNC0();
	}

	r = FUNC3(p, mfd_def_size, PROT_READ | PROT_WRITE);
	if (r < 0) {
		FUNC5("mprotect() failed: %m\n");
		FUNC0();
	}

	*(char *)p = 0;
	FUNC4(p, mfd_def_size);

	/* verify PUNCH_HOLE works */
	r = FUNC1(fd,
		      FALLOC_FL_PUNCH_HOLE | FALLOC_FL_KEEP_SIZE,
		      0,
		      mfd_def_size);
	if (r < 0) {
		FUNC5("fallocate(PUNCH_HOLE) failed: %m\n");
		FUNC0();
	}
}