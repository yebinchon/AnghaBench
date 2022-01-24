#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct tipc_bearer {int mtu; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * bearer_list; } ;

/* Variables and functions */
 struct tipc_bearer* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (struct net*) ; 

int FUNC4(struct net *net, u32 bearer_id)
{
	int mtu = 0;
	struct tipc_bearer *b;

	FUNC1();
	b = FUNC0(FUNC3(net)->bearer_list[bearer_id]);
	if (b)
		mtu = b->mtu;
	FUNC2();
	return mtu;
}