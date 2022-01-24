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
typedef  int /*<<< orphan*/  needle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (char const*,char) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 char* FUNC4 (char const*,char*) ; 

__attribute__((used)) static bool FUNC5(const char *log, const char *exp)
{
	char needle[80];
	const char *p, *q;
	int len;

	do {
		p = FUNC1(exp, '\t');
		if (!p)
			p = exp + FUNC2(exp);

		len = p - exp;
		if (len >= sizeof(needle) || !len) {
			FUNC0("FAIL\nTestcase bug\n");
			return false;
		}
		FUNC3(needle, exp, len);
		needle[len] = 0;
		q = FUNC4(log, needle);
		if (!q) {
			FUNC0("FAIL\nUnexpected verifier log in successful load!\n"
			       "EXP: %s\nRES:\n", needle);
			return false;
		}
		log = q + len;
		exp = p + 1;
	} while (*p);
	return true;
}