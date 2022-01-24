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
 int /*<<< orphan*/  FUNC0 (void*,scalar_t__) ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(void *fdt, const char *s)
{
	int newlen = FUNC2(s) + 1;

	FUNC0(fdt, FUNC1(fdt) - newlen);
}