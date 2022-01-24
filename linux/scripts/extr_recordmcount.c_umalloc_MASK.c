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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void * FUNC4(size_t size)
{
	void *const addr = FUNC2(size);
	if (addr == 0) {
		FUNC1(stderr, "malloc failed: %zu bytes\n", size);
		FUNC0();
		FUNC3();
		return NULL;
	}
	return addr;
}