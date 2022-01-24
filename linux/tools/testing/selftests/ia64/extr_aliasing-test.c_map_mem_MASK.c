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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  PCIIOC_MMAP_IS_MEM ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (void*,size_t) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  sum ; 

__attribute__((used)) static int FUNC7(char *path, off_t offset, size_t length, int touch)
{
	int fd, rc;
	void *addr;
	int *c;

	fd = FUNC5(path, O_RDWR);
	if (fd == -1) {
		FUNC6(path);
		return -1;
	}

	if (FUNC1("/proc/bus/pci/*", path, 0) == 0) {
		rc = FUNC2(fd, PCIIOC_MMAP_IS_MEM);
		if (rc == -1)
			FUNC6("PCIIOC_MMAP_IS_MEM ioctl");
	}

	addr = FUNC3(NULL, length, PROT_READ|PROT_WRITE, MAP_SHARED, fd, offset);
	if (addr == MAP_FAILED)
		return 1;

	if (touch) {
		c = (int *) addr;
		while (c < (int *) (addr + length))
			sum += *c++;
	}

	rc = FUNC4(addr, length);
	if (rc == -1) {
		FUNC6("munmap");
		return -1;
	}

	FUNC0(fd);
	return 0;
}