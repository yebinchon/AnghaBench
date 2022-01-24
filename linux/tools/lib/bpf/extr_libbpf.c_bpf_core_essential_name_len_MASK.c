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
 scalar_t__ FUNC0 (char const*) ; 
 size_t FUNC1 (char const*) ; 

__attribute__((used)) static size_t FUNC2(const char *name)
{
	size_t n = FUNC1(name);
	int i;

	for (i = n - 5; i >= 0; i--) {
		if (FUNC0(name + i))
			return i + 1;
	}
	return n;
}