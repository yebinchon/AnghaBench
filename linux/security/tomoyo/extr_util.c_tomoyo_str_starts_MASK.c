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
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char*,char const*,int const) ; 

bool FUNC2(char **src, const char *find)
{
	const int len = FUNC0(find);
	char *tmp = *src;

	if (FUNC1(tmp, find, len))
		return false;
	tmp += len;
	*src = tmp;
	return true;
}