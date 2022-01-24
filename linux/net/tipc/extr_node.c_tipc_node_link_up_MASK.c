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
struct tipc_node {int /*<<< orphan*/  net; TYPE_1__* links; } ;
struct tipc_media_addr {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct TYPE_2__ {struct tipc_media_addr maddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tipc_node*,int,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct sk_buff_head*,struct tipc_media_addr*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_node*) ; 

__attribute__((used)) static void FUNC4(struct tipc_node *n, int bearer_id,
			      struct sk_buff_head *xmitq)
{
	struct tipc_media_addr *maddr;

	FUNC2(n);
	FUNC0(n, bearer_id, xmitq);
	maddr = &n->links[bearer_id].maddr;
	FUNC1(n->net, bearer_id, xmitq, maddr);
	FUNC3(n);
}