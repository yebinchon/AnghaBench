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
 unsigned char* FUNC0 (unsigned char const*,char) ; 
 int FUNC1 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*) ; 

bool FUNC4(const unsigned char *domainname)
{
	if (!domainname || !FUNC3(domainname))
		return false;
	domainname = FUNC0(domainname, ' ');
	if (!domainname++)
		return true;
	while (1) {
		const unsigned char *cp = FUNC0(domainname, ' ');

		if (!cp)
			break;
		if (*domainname != '/' ||
		    !FUNC2(domainname, cp - domainname))
			return false;
		domainname = cp + 1;
	}
	return FUNC1(domainname);
}