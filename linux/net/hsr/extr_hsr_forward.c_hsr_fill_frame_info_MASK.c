#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct hsr_port {TYPE_1__* hsr; } ;
struct hsr_frame_info {int is_vlan; struct hsr_port* port_rcv; int /*<<< orphan*/  sequence_nr; struct sk_buff* skb_hsr; struct sk_buff* skb_std; int /*<<< orphan*/  node_src; int /*<<< orphan*/  is_supervision; } ;
struct ethhdr {scalar_t__ h_proto; } ;
struct TYPE_3__ {int /*<<< orphan*/  seqnr_lock; int /*<<< orphan*/  sequence_nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  ETH_P_HSR ; 
 int /*<<< orphan*/  ETH_P_PRP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct sk_buff*,struct hsr_frame_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct hsr_port*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct hsr_frame_info *frame,
			       struct sk_buff *skb, struct hsr_port *port)
{
	struct ethhdr *ethhdr;
	unsigned long irqflags;

	frame->is_supervision = FUNC5(port->hsr, skb);
	frame->node_src = FUNC2(port, skb, frame->is_supervision);
	if (!frame->node_src)
		return -1; /* Unknown node and !is_supervision, or no mem */

	ethhdr = (struct ethhdr *)FUNC6(skb);
	frame->is_vlan = false;
	if (ethhdr->h_proto == FUNC4(ETH_P_8021Q)) {
		frame->is_vlan = true;
		/* FIXME: */
		FUNC0(1, "HSR: VLAN not yet supported");
	}
	if (ethhdr->h_proto == FUNC4(ETH_P_PRP) ||
	    ethhdr->h_proto == FUNC4(ETH_P_HSR)) {
		frame->skb_std = NULL;
		frame->skb_hsr = skb;
		frame->sequence_nr = FUNC3(skb);
	} else {
		frame->skb_std = skb;
		frame->skb_hsr = NULL;
		/* Sequence nr for the master node */
		FUNC7(&port->hsr->seqnr_lock, irqflags);
		frame->sequence_nr = port->hsr->sequence_nr;
		port->hsr->sequence_nr++;
		FUNC8(&port->hsr->seqnr_lock, irqflags);
	}

	frame->port_rcv = port;
	FUNC1(port->hsr, skb, frame);

	return 0;
}