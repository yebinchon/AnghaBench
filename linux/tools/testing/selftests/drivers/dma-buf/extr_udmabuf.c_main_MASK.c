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
struct udmabuf_create {int memfd; int offset; int size; } ;
typedef  void* off_t ;
typedef  int /*<<< orphan*/  create ;

/* Variables and functions */
 int /*<<< orphan*/  F_ADD_SEALS ; 
 int /*<<< orphan*/  F_SEAL_SHRINK ; 
 int /*<<< orphan*/  MFD_ALLOW_SEALING ; 
 int NUM_PAGES ; 
 int /*<<< orphan*/  O_RDWR ; 
 char* TEST_PREFIX ; 
 int /*<<< orphan*/  UDMABUF_CREATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (int,void*) ; 
 int FUNC5 () ; 
 int FUNC6 (int,int /*<<< orphan*/ ,struct udmabuf_create*) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct udmabuf_create*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC11(int argc, char *argv[])
{
	struct udmabuf_create create;
	int devfd, memfd, buf, ret;
	off_t size;
	void *mem;

	devfd = FUNC9("/dev/udmabuf", O_RDWR);
	if (devfd < 0) {
		FUNC10("%s: [skip,no-udmabuf]\n", TEST_PREFIX);
		FUNC1(77);
	}

	memfd = FUNC7("udmabuf-test", MFD_ALLOW_SEALING);
	if (memfd < 0) {
		FUNC10("%s: [skip,no-memfd]\n", TEST_PREFIX);
		FUNC1(77);
	}

	ret = FUNC2(memfd, F_ADD_SEALS, F_SEAL_SHRINK);
	if (ret < 0) {
		FUNC10("%s: [skip,fcntl-add-seals]\n", TEST_PREFIX);
		FUNC1(77);
	}


	size = FUNC5() * NUM_PAGES;
	ret = FUNC4(memfd, size);
	if (ret == -1) {
		FUNC10("%s: [FAIL,memfd-truncate]\n", TEST_PREFIX);
		FUNC1(1);
	}

	FUNC8(&create, 0, sizeof(create));

	/* should fail (offset not page aligned) */
	create.memfd  = memfd;
	create.offset = FUNC5()/2;
	create.size   = FUNC5();
	buf = FUNC6(devfd, UDMABUF_CREATE, &create);
	if (buf >= 0) {
		FUNC10("%s: [FAIL,test-1]\n", TEST_PREFIX);
		FUNC1(1);
	}

	/* should fail (size not multiple of page) */
	create.memfd  = memfd;
	create.offset = 0;
	create.size   = FUNC5()/2;
	buf = FUNC6(devfd, UDMABUF_CREATE, &create);
	if (buf >= 0) {
		FUNC10("%s: [FAIL,test-2]\n", TEST_PREFIX);
		FUNC1(1);
	}

	/* should fail (not memfd) */
	create.memfd  = 0; /* stdin */
	create.offset = 0;
	create.size   = size;
	buf = FUNC6(devfd, UDMABUF_CREATE, &create);
	if (buf >= 0) {
		FUNC10("%s: [FAIL,test-3]\n", TEST_PREFIX);
		FUNC1(1);
	}

	/* should work */
	create.memfd  = memfd;
	create.offset = 0;
	create.size   = size;
	buf = FUNC6(devfd, UDMABUF_CREATE, &create);
	if (buf < 0) {
		FUNC10("%s: [FAIL,test-4]\n", TEST_PREFIX);
		FUNC1(1);
	}

	FUNC3(stderr, "%s: ok\n", TEST_PREFIX);
	FUNC0(buf);
	FUNC0(memfd);
	FUNC0(devfd);
	return 0;
}