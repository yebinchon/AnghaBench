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
 int /*<<< orphan*/  NFNL_SUBSYS_IPSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char*,char const*) ; 

__attribute__((used)) static bool
FUNC5(const char *name)
{
	FUNC1(NFNL_SUBSYS_IPSET);
	FUNC2("try to load ip_set_%s\n", name);
	if (FUNC4("ip_set_%s", name) < 0) {
		FUNC3("Can't find ip_set type %s\n", name);
		FUNC0(NFNL_SUBSYS_IPSET);
		return false;
	}
	FUNC0(NFNL_SUBSYS_IPSET);
	return true;
}