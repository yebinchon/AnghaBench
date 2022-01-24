#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ fd_map ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC3 (scalar_t__,TYPE_1__*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int mmap_failed ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 TYPE_1__ sb ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void *FUNC7(char const *fname)
{
	void *addr;

	fd_map = FUNC5(fname, O_RDWR);
	if (fd_map < 0 || FUNC3(fd_map, &sb) < 0) {
		FUNC6(fname);
		FUNC1();
	}
	if (!FUNC0(sb.st_mode)) {
		FUNC2(stderr, "not a regular file: %s\n", fname);
		FUNC1();
	}
	addr = FUNC4(0, sb.st_size, PROT_READ|PROT_WRITE, MAP_SHARED,
		    fd_map, 0);
	if (addr == MAP_FAILED) {
		mmap_failed = 1;
		FUNC2(stderr, "Could not mmap file: %s\n", fname);
		FUNC1();
	}
	return addr;
}