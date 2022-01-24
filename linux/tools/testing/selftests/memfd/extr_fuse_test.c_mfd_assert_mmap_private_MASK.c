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
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  mfd_def_size ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void *FUNC3(int fd)
{
	void *p;

	p = FUNC1(NULL,
		 mfd_def_size,
		 PROT_READ | PROT_WRITE,
		 MAP_PRIVATE,
		 fd,
		 0);
	if (p == MAP_FAILED) {
		FUNC2("mmap() failed: %m\n");
		FUNC0();
	}

	return p;
}