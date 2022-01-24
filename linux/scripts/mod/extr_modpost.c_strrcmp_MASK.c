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
 int FUNC0 (char const*,char const*,int) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const char *s, const char *sub)
{
	int slen, sublen;

	if (!s || !sub)
		return 1;

	slen = FUNC1(s);
	sublen = FUNC1(sub);

	if ((slen == 0) || (sublen == 0))
		return 1;

	if (sublen > slen)
		return 1;

	return FUNC0(s + slen - sublen, sub, sublen);
}