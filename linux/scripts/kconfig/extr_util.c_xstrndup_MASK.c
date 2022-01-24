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
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (char const*,size_t) ; 

char *FUNC3(const char *s, size_t n)
{
	char *p;

	p = FUNC2(s, n);
	if (p)
		return p;
	FUNC1(stderr, "Out of memory.\n");
	FUNC0(1);
}