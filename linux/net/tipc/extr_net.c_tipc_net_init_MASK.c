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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct net*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ *) ; 

int FUNC4(struct net *net, u8 *node_id, u32 addr)
{
	if (FUNC2(net)) {
		FUNC0("Cannot configure node identity twice\n");
		return -1;
	}
	FUNC0("Started in network mode\n");

	if (node_id)
		FUNC3(net, node_id);
	if (addr)
		FUNC1(net, addr);
	return 0;
}