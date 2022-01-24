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
struct sk_buff {scalar_t__ offload_fwd_mark; } ;
struct net_bridge_port {scalar_t__ offload_fwd_mark; } ;
struct TYPE_2__ {scalar_t__ offload_fwd_mark; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(const struct net_bridge_port *p,
			      struct sk_buff *skb)
{
	if (skb->offload_fwd_mark && !FUNC1(!p->offload_fwd_mark))
		FUNC0(skb)->offload_fwd_mark = p->offload_fwd_mark;
}