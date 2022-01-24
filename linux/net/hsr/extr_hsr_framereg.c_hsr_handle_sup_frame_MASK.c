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
struct sk_buff {scalar_t__ data; } ;
struct list_head {int dummy; } ;
struct hsrv1_ethhdr_sp {int dummy; } ;
struct hsr_tag {int dummy; } ;
struct hsr_sup_tag {int dummy; } ;
struct hsr_sup_payload {int /*<<< orphan*/  macaddress_A; } ;
struct hsr_port {int /*<<< orphan*/  type; TYPE_1__* hsr; } ;
struct hsr_node {int /*<<< orphan*/  mac_list; int /*<<< orphan*/  addr_B_port; int /*<<< orphan*/ * seq_out; scalar_t__* time_in_stale; int /*<<< orphan*/ * time_in; int /*<<< orphan*/  macaddress_B; } ;
struct ethhdr {scalar_t__ h_proto; int /*<<< orphan*/  h_source; } ;
struct TYPE_2__ {struct list_head node_db; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_HSR ; 
 int HSR_PT_PORTS ; 
 scalar_t__ HSR_SEQNR_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hsr_node* FUNC1 (struct list_head*,int /*<<< orphan*/ ) ; 
 struct hsr_node* FUNC2 (struct list_head*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hsr_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu_head ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(struct sk_buff *skb, struct hsr_node *node_curr,
			  struct hsr_port *port_rcv)
{
	struct ethhdr *ethhdr;
	struct hsr_node *node_real;
	struct hsr_sup_payload *hsr_sp;
	struct list_head *node_db;
	int i;

	ethhdr = (struct ethhdr *)FUNC7(skb);

	/* Leave the ethernet header. */
	FUNC8(skb, sizeof(struct ethhdr));

	/* And leave the HSR tag. */
	if (ethhdr->h_proto == FUNC3(ETH_P_HSR))
		FUNC8(skb, sizeof(struct hsr_tag));

	/* And leave the HSR sup tag. */
	FUNC8(skb, sizeof(struct hsr_sup_tag));

	hsr_sp = (struct hsr_sup_payload *)skb->data;

	/* Merge node_curr (registered on macaddress_B) into node_real */
	node_db = &port_rcv->hsr->node_db;
	node_real = FUNC1(node_db, hsr_sp->macaddress_A);
	if (!node_real)
		/* No frame received from AddrA of this node yet */
		node_real = FUNC2(node_db, hsr_sp->macaddress_A,
					 HSR_SEQNR_START - 1);
	if (!node_real)
		goto done; /* No mem */
	if (node_real == node_curr)
		/* Node has already been merged */
		goto done;

	FUNC0(node_real->macaddress_B, ethhdr->h_source);
	for (i = 0; i < HSR_PT_PORTS; i++) {
		if (!node_curr->time_in_stale[i] &&
		    FUNC10(node_curr->time_in[i], node_real->time_in[i])) {
			node_real->time_in[i] = node_curr->time_in[i];
			node_real->time_in_stale[i] =
						node_curr->time_in_stale[i];
		}
		if (FUNC6(node_curr->seq_out[i], node_real->seq_out[i]))
			node_real->seq_out[i] = node_curr->seq_out[i];
	}
	node_real->addr_B_port = port_rcv->type;

	FUNC5(&node_curr->mac_list);
	FUNC4(node_curr, rcu_head);

done:
	FUNC9(skb, sizeof(struct hsrv1_ethhdr_sp));
}