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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,char const*,void const*,int,void*,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int
FUNC7(char *filename,
	     const char *sym,
	     uint64_t code_addr,
	     const void *code,
	     int csize,
	     void *debug,
	     int nr_debug_entries,
	     void *unwinding,
	     uint32_t unwinding_header_size,
	     uint32_t unwinding_size)
{
	int ret, fd;

	if (verbose > 0)
		FUNC1(stderr, "write ELF image %s\n", filename);

	fd = FUNC3(filename, O_CREAT|O_TRUNC|O_WRONLY, 0644);
	if (fd == -1) {
		FUNC4("cannot create jit ELF %s: %s\n", filename, FUNC5(errno));
		return -1;
	}

	ret = FUNC2(fd, code_addr, sym, (const void *)code, csize, debug, nr_debug_entries,
			    unwinding, unwinding_header_size, unwinding_size);

        FUNC0(fd);

        if (ret)
                FUNC6(filename);

	return ret;
}