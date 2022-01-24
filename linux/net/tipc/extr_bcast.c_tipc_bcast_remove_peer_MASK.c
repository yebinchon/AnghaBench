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
struct tipc_link {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct sk_buff_head inputq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 TYPE_1__* FUNC2 (struct net*) ; 
 struct tipc_link* FUNC3 (struct net*) ; 
 int /*<<< orphan*/  FUNC4 (struct net*) ; 
 int /*<<< orphan*/  FUNC5 (struct net*) ; 
 int /*<<< orphan*/  FUNC6 (struct net*) ; 
 int /*<<< orphan*/  FUNC7 (struct net*) ; 
 int /*<<< orphan*/  FUNC8 (struct net*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_link*,struct tipc_link*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct net*,struct sk_buff_head*) ; 

void FUNC11(struct net *net, struct tipc_link *rcv_l)
{
	struct tipc_link *snd_l = FUNC3(net);
	struct sk_buff_head *inputq = &FUNC2(net)->inputq;
	struct sk_buff_head xmitq;

	FUNC0(&xmitq);

	FUNC4(net);
	FUNC9(snd_l, rcv_l, &xmitq);
	FUNC7(net);
	FUNC6(net);
	FUNC5(net);

	FUNC8(net, &xmitq);

	/* Any socket wakeup messages ? */
	if (!FUNC1(inputq))
		FUNC10(net, inputq);
}