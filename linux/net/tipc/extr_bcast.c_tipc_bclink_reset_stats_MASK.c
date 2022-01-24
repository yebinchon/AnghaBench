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
struct tipc_link {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ENOPROTOOPT ; 
 struct tipc_link* FUNC0 (struct net*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_link*) ; 

int FUNC4(struct net *net)
{
	struct tipc_link *l = FUNC0(net);

	if (!l)
		return -ENOPROTOOPT;

	FUNC1(net);
	FUNC3(l);
	FUNC2(net);
	return 0;
}