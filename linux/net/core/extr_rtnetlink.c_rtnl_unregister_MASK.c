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
 int ENOENT ; 
 int RTNL_FAMILY_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct rtnl_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC2 (struct rtnl_link*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 
 struct rtnl_link** FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * rtnl_msg_handlers ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(int protocol, int msgtype)
{
	struct rtnl_link **tab, *link;
	int msgindex;

	FUNC0(protocol < 0 || protocol > RTNL_FAMILY_MAX);
	msgindex = FUNC3(msgtype);

	FUNC5();
	tab = FUNC4(rtnl_msg_handlers[protocol]);
	if (!tab) {
		FUNC6();
		return -ENOENT;
	}

	link = tab[msgindex];
	FUNC2(tab[msgindex], NULL);
	FUNC6();

	FUNC1(link, rcu);

	return 0;
}