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
typedef  int u32 ;
struct tipc_node {int* active_links; TYPE_1__* links; } ;
struct net {int dummy; } ;
struct TYPE_2__ {unsigned int mtu; } ;

/* Variables and functions */
 int INVALID_BEARER_ID ; 
 unsigned int MAX_MSG_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 struct tipc_node* FUNC1 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_node*) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct net *net, u32 addr, u32 sel)
{
	struct tipc_node *n;
	int bearer_id;
	unsigned int mtu = MAX_MSG_SIZE;

	n = FUNC1(net, addr);
	if (FUNC3(!n))
		return mtu;

	bearer_id = n->active_links[sel & 1];
	if (FUNC0(bearer_id != INVALID_BEARER_ID))
		mtu = n->links[bearer_id].mtu;
	FUNC2(n);
	return mtu;
}