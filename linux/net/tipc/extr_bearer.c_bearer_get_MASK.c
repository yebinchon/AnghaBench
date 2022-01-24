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
struct tipc_net {int /*<<< orphan*/ * bearer_list; } ;
struct tipc_bearer {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct tipc_bearer* FUNC0 (int /*<<< orphan*/ ) ; 
 struct tipc_net* FUNC1 (struct net*) ; 

__attribute__((used)) static struct tipc_bearer *FUNC2(struct net *net, int bearer_id)
{
	struct tipc_net *tn = FUNC1(net);

	return FUNC0(tn->bearer_list[bearer_id]);
}