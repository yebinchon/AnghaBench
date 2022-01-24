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
struct tipc_link {int /*<<< orphan*/  name; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIPC_MAX_LINK_NAME ; 
 scalar_t__ FUNC0 (struct tipc_link*) ; 
 scalar_t__ FUNC1 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,...) ; 

char *FUNC4(struct tipc_link *l, char *buf)
{
	if (!l)
		FUNC3(buf, TIPC_MAX_LINK_NAME, "null");
	else if (FUNC1(l))
		FUNC3(buf, TIPC_MAX_LINK_NAME, "broadcast-sender");
	else if (FUNC0(l))
		FUNC3(buf, TIPC_MAX_LINK_NAME,
			  "broadcast-receiver, peer %x", l->addr);
	else
		FUNC2(buf, l->name, TIPC_MAX_LINK_NAME);

	return buf;
}