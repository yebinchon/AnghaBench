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
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const*,int,char*) ; 
 char* FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 

__attribute__((used)) static void FUNC4(const char *p)
{
	const char *q, *r;
	const char *start = p;

	while ((p = FUNC2(p, "CONFIG_"))) {
		if (p > start && (FUNC0(p[-1]) || p[-1] == '_')) {
			p += 7;
			continue;
		}
		p += 7;
		q = p;
		while (*q && (FUNC0(*q) || *q == '_'))
			q++;
		if (FUNC1(p, q - p, "_MODULE"))
			r = q - 7;
		else
			r = q;
		if (r > p)
			FUNC3(p, r - p);
		p = q;
	}
}