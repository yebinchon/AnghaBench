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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,struct sk_buff_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct net *net, struct sk_buff *skb, u32 dnode,
		       u32 selector)
{
	struct sk_buff_head head;

	FUNC0(&head);
	FUNC1(&head, skb);
	FUNC2(net, &head, dnode, selector);
	return 0;
}