#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sk_buff {int len; } ;
struct hsr_port {scalar_t__ type; } ;
struct hsr_frame_info {int /*<<< orphan*/  sequence_nr; scalar_t__ is_vlan; } ;
struct TYPE_4__ {void* h_proto; } ;
struct TYPE_5__ {void* encap_proto; void* sequence_nr; } ;
struct hsr_ethhdr {TYPE_1__ ethhdr; TYPE_2__ hsr_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_HSR ; 
 int /*<<< orphan*/  ETH_P_PRP ; 
 scalar_t__ HSR_PT_SLAVE_A ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct sk_buff *skb, struct hsr_frame_info *frame,
			 struct hsr_port *port, u8 proto_version)
{
	struct hsr_ethhdr *hsr_ethhdr;
	int lane_id;
	int lsdu_size;

	if (port->type == HSR_PT_SLAVE_A)
		lane_id = 0;
	else
		lane_id = 1;

	lsdu_size = skb->len - 14;
	if (frame->is_vlan)
		lsdu_size -= 4;

	hsr_ethhdr = (struct hsr_ethhdr *)FUNC3(skb);

	FUNC2(&hsr_ethhdr->hsr_tag, lane_id);
	FUNC1(&hsr_ethhdr->hsr_tag, lsdu_size);
	hsr_ethhdr->hsr_tag.sequence_nr = FUNC0(frame->sequence_nr);
	hsr_ethhdr->hsr_tag.encap_proto = hsr_ethhdr->ethhdr.h_proto;
	hsr_ethhdr->ethhdr.h_proto = FUNC0(proto_version ?
			ETH_P_HSR : ETH_P_PRP);
}