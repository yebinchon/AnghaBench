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
struct rtnl_link {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtnl_link**,int /*<<< orphan*/ *) ; 
 int RTM_NR_MSGTYPES ; 
 int RTNL_FAMILY_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct rtnl_link**) ; 
 int /*<<< orphan*/  FUNC3 (struct rtnl_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC4 (struct rtnl_link*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct rtnl_link*** rtnl_msg_handlers ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(int protocol)
{
	struct rtnl_link **tab, *link;
	int msgindex;

	FUNC0(protocol < 0 || protocol > RTNL_FAMILY_MAX);

	FUNC5();
	tab = rtnl_msg_handlers[protocol];
	if (!tab) {
		FUNC6();
		return;
	}
	FUNC1(rtnl_msg_handlers[protocol], NULL);
	for (msgindex = 0; msgindex < RTM_NR_MSGTYPES; msgindex++) {
		link = tab[msgindex];
		if (!link)
			continue;

		FUNC4(tab[msgindex], NULL);
		FUNC3(link, rcu);
	}
	FUNC6();

	FUNC7();

	FUNC2(tab);
}