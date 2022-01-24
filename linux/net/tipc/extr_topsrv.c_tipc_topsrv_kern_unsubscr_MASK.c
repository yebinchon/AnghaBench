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
struct tipc_conn {int /*<<< orphan*/  flags; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (struct tipc_conn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_conn*,int /*<<< orphan*/ *) ; 
 struct tipc_conn* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net*) ; 

void FUNC5(struct net *net, int conid)
{
	struct tipc_conn *con;

	con = FUNC3(FUNC4(net), conid);
	if (!con)
		return;

	FUNC1(CF_CONNECTED, &con->flags);
	FUNC2(con, NULL);
	FUNC0(con);
	FUNC0(con);
}