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
typedef  int s8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 char* FUNC2 (char const*,char const*) ; 

__attribute__((used)) static s8 FUNC3(const char *string, const char *find)
{
	const char *cp = FUNC2(string, find);

	if (cp) {
		cp += FUNC0(find);
		if (!FUNC1(cp, "=yes", 4))
			return 1;
		else if (!FUNC1(cp, "=no", 3))
			return 0;
	}
	return -1;
}