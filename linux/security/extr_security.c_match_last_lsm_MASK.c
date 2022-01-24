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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static bool FUNC3(const char *list, const char *lsm)
{
	const char *last;

	if (FUNC0(!list || !lsm))
		return false;
	last = FUNC2(list, ',');
	if (last)
		/* Pass the comma, strcmp() will check for '\0' */
		last++;
	else
		last = list;
	return !FUNC1(last, lsm);
}