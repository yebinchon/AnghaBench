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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_node {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  random; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct net*) ; 
 struct tipc_node* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_node*) ; 

__attribute__((used)) static u32 FUNC3(struct net *net, u32 addr)
{
	struct tipc_node *n;

	addr ^= FUNC0(net)->random;
	while ((n = FUNC1(net, addr))) {
		FUNC2(n);
		addr++;
	}
	return addr;
}