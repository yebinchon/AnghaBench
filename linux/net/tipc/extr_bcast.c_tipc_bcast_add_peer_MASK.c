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
struct sk_buff_head {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct tipc_link* FUNC0 (struct net*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 
 int /*<<< orphan*/  FUNC4 (struct net*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_link*,struct tipc_link*,struct sk_buff_head*) ; 

void FUNC6(struct net *net, struct tipc_link *uc_l,
			 struct sk_buff_head *xmitq)
{
	struct tipc_link *snd_l = FUNC0(net);

	FUNC1(net);
	FUNC5(snd_l, uc_l, xmitq);
	FUNC4(net);
	FUNC3(net);
	FUNC2(net);
}