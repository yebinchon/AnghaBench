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
 int KDB_BADADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUPPRESS ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long) ; 
 int FUNC4 (char*,char*,size_t) ; 

int FUNC5(void *res, unsigned long addr, size_t size)
{
	int ret = FUNC4((char *)res, (char *)addr, size);
	if (ret) {
		if (!FUNC0(SUPPRESS)) {
			FUNC3("kdb_getarea: Bad address 0x%lx\n", addr);
			FUNC2(SUPPRESS);
		}
		ret = KDB_BADADDR;
	} else {
		FUNC1(SUPPRESS);
	}
	return ret;
}