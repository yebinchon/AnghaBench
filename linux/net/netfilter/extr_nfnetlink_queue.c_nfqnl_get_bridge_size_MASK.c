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
struct sk_buff {scalar_t__ network_header; scalar_t__ mac_header; } ;
struct TYPE_2__ {scalar_t__ pf; } ;
struct nf_queue_entry {TYPE_1__ state; struct sk_buff* skb; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 scalar_t__ PF_BRIDGE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static u32 FUNC3(struct nf_queue_entry *entry)
{
	struct sk_buff *entskb = entry->skb;
	u32 nlalen = 0;

	if (entry->state.pf != PF_BRIDGE || !FUNC1(entskb))
		return 0;

	if (FUNC2(entskb))
		nlalen += FUNC0(FUNC0(sizeof(__be16)) +
					 FUNC0(sizeof(__be16)));

	if (entskb->network_header > entskb->mac_header)
		nlalen += FUNC0((entskb->network_header -
					  entskb->mac_header));

	return nlalen;
}