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
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  mfd_def_size ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(int fd)
{
	void *p;

	/* verify PROT_READ and MAP_SHARED *is* allowed */
	p = FUNC1(NULL,
		 mfd_def_size,
		 PROT_READ,
		 MAP_SHARED,
		 fd,
		 0);
	if (p == MAP_FAILED) {
		FUNC3("mmap() failed: %m\n");
		FUNC0();
	}
	FUNC2(p, mfd_def_size);
}