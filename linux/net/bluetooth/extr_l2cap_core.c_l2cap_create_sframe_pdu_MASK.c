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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  priority; int /*<<< orphan*/  len; scalar_t__ data; } ;
struct l2cap_hdr {void* cid; void* len; } ;
struct l2cap_chan {scalar_t__ fcs; int /*<<< orphan*/  flags; scalar_t__ dcid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FLAG_EXT_CTRL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_PRIO_MAX ; 
 scalar_t__ L2CAP_ENH_CTRL_SIZE ; 
 scalar_t__ L2CAP_EXT_CTRL_SIZE ; 
 scalar_t__ L2CAP_FCS_CRC16 ; 
 scalar_t__ L2CAP_FCS_SIZE ; 
 scalar_t__ L2CAP_HDR_SIZE ; 
 int FUNC1 (struct l2cap_chan*) ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct l2cap_hdr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct l2cap_hdr*) ; 
 struct l2cap_hdr* FUNC7 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sk_buff *FUNC9(struct l2cap_chan *chan,
					       u32 control)
{
	struct sk_buff *skb;
	struct l2cap_hdr *lh;
	int hlen = FUNC1(chan);

	if (chan->fcs == L2CAP_FCS_CRC16)
		hlen += L2CAP_FCS_SIZE;

	skb = FUNC2(hlen, GFP_KERNEL);

	if (!skb)
		return FUNC0(-ENOMEM);

	lh = FUNC7(skb, L2CAP_HDR_SIZE);
	lh->len = FUNC3(hlen - L2CAP_HDR_SIZE);
	lh->cid = FUNC3(chan->dcid);

	if (FUNC8(FLAG_EXT_CTRL, &chan->flags))
		FUNC6(control, FUNC7(skb, L2CAP_EXT_CTRL_SIZE));
	else
		FUNC5(control, FUNC7(skb, L2CAP_ENH_CTRL_SIZE));

	if (chan->fcs == L2CAP_FCS_CRC16) {
		u16 fcs = FUNC4(0, (u8 *)skb->data, skb->len);
		FUNC5(fcs, FUNC7(skb, L2CAP_FCS_SIZE));
	}

	skb->priority = HCI_PRIO_MAX;
	return skb;
}