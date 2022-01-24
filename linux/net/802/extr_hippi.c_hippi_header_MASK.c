#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; scalar_t__ cb; } ;
struct net_device {void const* dev_addr; } ;
struct TYPE_6__ {int dest_addr_type; int src_addr_type; scalar_t__* dest_switch_addr; int /*<<< orphan*/  reserved; scalar_t__* src_switch_addr; scalar_t__ message_type; scalar_t__ double_wide; scalar_t__ fc; } ;
struct TYPE_5__ {int* oui; int /*<<< orphan*/  ethertype; int /*<<< orphan*/  ctrl; void* ssap; void* dsap; } ;
struct TYPE_4__ {void* d2_size; void* fixed; } ;
struct hippi_hdr {TYPE_3__ le; TYPE_2__ snap; TYPE_1__ fp; } ;
struct hippi_cb {scalar_t__ ifield; } ;

/* Variables and functions */
 void* HIPPI_EXTENDED_SAP ; 
 int HIPPI_HLEN ; 
 int /*<<< orphan*/  HIPPI_UI_CMD ; 
 void* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,void const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct hippi_hdr* FUNC5 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct net_device *dev,
			unsigned short type,
			const void *daddr, const void *saddr, unsigned int len)
{
	struct hippi_hdr *hip = FUNC5(skb, HIPPI_HLEN);
	struct hippi_cb *hcb = (struct hippi_cb *) skb->cb;

	if (!len){
		len = skb->len - HIPPI_HLEN;
		FUNC4("hippi_header(): length not supplied\n");
	}

	/*
	 * Due to the stupidity of the little endian byte-order we
	 * have to set the fp field this way.
	 */
	hip->fp.fixed		= FUNC0(0x04800018);
	hip->fp.d2_size		= FUNC0(len + 8);
	hip->le.fc		= 0;
	hip->le.double_wide	= 0;	/* only HIPPI 800 for the time being */
	hip->le.message_type	= 0;	/* Data PDU */

	hip->le.dest_addr_type	= 2;	/* 12 bit SC address */
	hip->le.src_addr_type	= 2;	/* 12 bit SC address */

	FUNC2(hip->le.src_switch_addr, dev->dev_addr + 3, 3);
	FUNC3(&hip->le.reserved, 0, 16);

	hip->snap.dsap		= HIPPI_EXTENDED_SAP;
	hip->snap.ssap		= HIPPI_EXTENDED_SAP;
	hip->snap.ctrl		= HIPPI_UI_CMD;
	hip->snap.oui[0]	= 0x00;
	hip->snap.oui[1]	= 0x00;
	hip->snap.oui[2]	= 0x00;
	hip->snap.ethertype	= FUNC1(type);

	if (daddr)
	{
		FUNC2(hip->le.dest_switch_addr, daddr + 3, 3);
		FUNC2(&hcb->ifield, daddr + 2, 4);
		return HIPPI_HLEN;
	}
	hcb->ifield = 0;
	return -((int)HIPPI_HLEN);
}