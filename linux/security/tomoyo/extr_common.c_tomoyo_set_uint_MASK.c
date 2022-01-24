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
 int /*<<< orphan*/  FUNC0 (char const*,char*,unsigned int*) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (char const*,char const*) ; 

__attribute__((used)) static void FUNC3(unsigned int *i, const char *string,
			    const char *find)
{
	const char *cp = FUNC2(string, find);

	if (cp)
		FUNC0(cp + FUNC1(find), "=%u", i);
}