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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  stderr ; 

void *FUNC3(size_t size)
{
	void *p = FUNC2(size);
	if (p)
		return p;
	FUNC1(stderr, "Out of memory.\n");
	FUNC0(1);
}