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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_link {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCLINK_WIN_MIN ; 
 int EINVAL ; 
 int ENOPROTOOPT ; 
 int /*<<< orphan*/  TIPC_MAX_LINK_WIN ; 
 struct tipc_link* FUNC0 (struct net*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_link*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net *net, u32 limit)
{
	struct tipc_link *l = FUNC0(net);

	if (!l)
		return -ENOPROTOOPT;
	if (limit < BCLINK_WIN_MIN)
		limit = BCLINK_WIN_MIN;
	if (limit > TIPC_MAX_LINK_WIN)
		return -EINVAL;
	FUNC1(net);
	FUNC3(l, limit);
	FUNC2(net);
	return 0;
}