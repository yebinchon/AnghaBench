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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 size_t FUNC1 (char*) ; 

__attribute__((used)) static inline bool FUNC2(char *name)
{
	size_t len;

	len = FUNC1(name);
	if (len > 5 && !FUNC0(name + len - 5, ".unit"))
		return true;
	if (len > 6 && !FUNC0(name + len - 6, ".scale"))
		return true;
	if (len > 8 && !FUNC0(name + len - 8, ".per-pkg"))
		return true;
	if (len > 9 && !FUNC0(name + len - 9, ".snapshot"))
		return true;

	return false;
}