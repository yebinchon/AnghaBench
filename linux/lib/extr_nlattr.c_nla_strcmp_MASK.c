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
struct nlattr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char*,char const*,int) ; 
 char* FUNC1 (struct nlattr const*) ; 
 int FUNC2 (struct nlattr const*) ; 
 int FUNC3 (char const*) ; 

int FUNC4(const struct nlattr *nla, const char *str)
{
	int len = FUNC3(str);
	char *buf = FUNC1(nla);
	int attrlen = FUNC2(nla);
	int d;

	if (attrlen > 0 && buf[attrlen - 1] == '\0')
		attrlen--;

	d = attrlen - len;
	if (d == 0)
		d = FUNC0(FUNC1(nla), str, len);

	return d;
}