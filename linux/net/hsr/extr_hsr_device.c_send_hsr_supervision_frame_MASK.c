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
struct sk_buff {int /*<<< orphan*/  len; TYPE_2__* dev; int /*<<< orphan*/  priority; void* protocol; } ;
struct hsr_tag {void* sequence_nr; void* encap_proto; } ;
struct hsr_sup_tag {int HSR_TLV_length; scalar_t__ HSR_TLV_type; void* sequence_nr; } ;
struct hsr_sup_payload {int /*<<< orphan*/  macaddress_A; } ;
struct hsr_port {TYPE_2__* dev; TYPE_1__* hsr; } ;
struct TYPE_5__ {int needed_tailroom; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  seqnr_lock; int /*<<< orphan*/  sequence_nr; int /*<<< orphan*/  sup_sequence_nr; int /*<<< orphan*/  sup_multicast_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_HSR ; 
 int /*<<< orphan*/  ETH_P_PRP ; 
 scalar_t__ ETH_ZLEN ; 
 scalar_t__ HSR_HLEN ; 
 int /*<<< orphan*/  HSR_V1_SUP_LSDUSIZE ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  TC_PRIO_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct sk_buff* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct sk_buff*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct hsr_port*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct hsr_sup_tag*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct hsr_sup_tag*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct hsr_tag*,int /*<<< orphan*/ ) ; 
 void* FUNC11 (struct sk_buff*,int) ; 
 scalar_t__ FUNC12 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC17(struct hsr_port *master,
				       u8 type, u8 hsr_ver)
{
	struct sk_buff *skb;
	int hlen, tlen;
	struct hsr_tag *hsr_tag;
	struct hsr_sup_tag *hsr_stag;
	struct hsr_sup_payload *hsr_sp;
	unsigned long irqflags;

	hlen = FUNC0(master->dev);
	tlen = master->dev->needed_tailroom;
	skb = FUNC2(sizeof(struct hsr_tag) +
			    sizeof(struct hsr_sup_tag) +
			    sizeof(struct hsr_sup_payload) + hlen + tlen);

	if (!skb)
		return;

	FUNC13(skb, hlen);

	skb->dev = master->dev;
	skb->protocol = FUNC6(hsr_ver ? ETH_P_HSR : ETH_P_PRP);
	skb->priority = TC_PRIO_CONTROL;

	if (FUNC3(skb, skb->dev, (hsr_ver ? ETH_P_HSR : ETH_P_PRP),
			    master->hsr->sup_multicast_addr,
			    skb->dev->dev_addr, skb->len) <= 0)
		goto out;
	FUNC14(skb);

	if (hsr_ver > 0) {
		hsr_tag = FUNC11(skb, sizeof(struct hsr_tag));
		hsr_tag->encap_proto = FUNC6(ETH_P_PRP);
		FUNC10(hsr_tag, HSR_V1_SUP_LSDUSIZE);
	}

	hsr_stag = FUNC11(skb, sizeof(struct hsr_sup_tag));
	FUNC9(hsr_stag, (hsr_ver ? 0x0 : 0xf));
	FUNC8(hsr_stag, hsr_ver);

	/* From HSRv1 on we have separate supervision sequence numbers. */
	FUNC15(&master->hsr->seqnr_lock, irqflags);
	if (hsr_ver > 0) {
		hsr_stag->sequence_nr = FUNC6(master->hsr->sup_sequence_nr);
		hsr_tag->sequence_nr = FUNC6(master->hsr->sequence_nr);
		master->hsr->sup_sequence_nr++;
		master->hsr->sequence_nr++;
	} else {
		hsr_stag->sequence_nr = FUNC6(master->hsr->sequence_nr);
		master->hsr->sequence_nr++;
	}
	FUNC16(&master->hsr->seqnr_lock, irqflags);

	hsr_stag->HSR_TLV_type = type;
	/* TODO: Why 12 in HSRv0? */
	hsr_stag->HSR_TLV_length =
				hsr_ver ? sizeof(struct hsr_sup_payload) : 12;

	/* Payload: MacAddressA */
	hsr_sp = FUNC11(skb, sizeof(struct hsr_sup_payload));
	FUNC4(hsr_sp->macaddress_A, master->dev->dev_addr);

	if (FUNC12(skb, ETH_ZLEN + HSR_HLEN))
		return;

	FUNC5(skb, master);
	return;

out:
	FUNC1(1, "HSR: Could not send supervision frame\n");
	FUNC7(skb);
}