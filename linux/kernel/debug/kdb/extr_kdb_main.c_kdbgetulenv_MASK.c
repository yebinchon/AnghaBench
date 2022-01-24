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
 int KDB_NOENVVALUE ; 
 int KDB_NOTENV ; 
 char* FUNC0 (char const*) ; 
 unsigned long FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(const char *match, unsigned long *value)
{
	char *ep;

	ep = FUNC0(match);
	if (!ep)
		return KDB_NOTENV;
	if (FUNC2(ep) == 0)
		return KDB_NOENVVALUE;

	*value = FUNC1(ep, NULL, 0);

	return 0;
}