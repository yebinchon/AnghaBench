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
typedef  unsigned int u8 ;
typedef  unsigned int u16 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int len; unsigned int* data; int /*<<< orphan*/  priority; int /*<<< orphan*/  dev; scalar_t__ head_frag; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; int /*<<< orphan*/  h_source; int /*<<< orphan*/  h_dest; } ;
typedef  int /*<<< orphan*/  eth ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int const,int) ; 
 int ETH_ALEN ; 
 unsigned int ETH_P_AARP ; 
 unsigned int ETH_P_IPX ; 
 struct sk_buff* FUNC1 (struct sk_buff*,unsigned int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  bridge_tunnel_header ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (unsigned int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct ethhdr*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rfc1042_header ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int,struct ethhdr*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 

void FUNC17(struct sk_buff *skb, struct sk_buff_head *list,
			      const u8 *addr, enum nl80211_iftype iftype,
			      const unsigned int extra_headroom,
			      const u8 *check_da, const u8 *check_sa)
{
	unsigned int hlen = FUNC0(extra_headroom, 4);
	struct sk_buff *frame = NULL;
	u16 ethertype;
	u8 *payload;
	int offset = 0, remaining;
	struct ethhdr eth;
	bool reuse_frag = skb->head_frag && !FUNC12(skb);
	bool reuse_skb = false;
	bool last = false;

	while (!last) {
		unsigned int subframe_len;
		int len;
		u8 padding;

		FUNC11(skb, offset, &eth, sizeof(eth));
		len = FUNC10(eth.h_proto);
		subframe_len = sizeof(struct ethhdr) + len;
		padding = (4 - subframe_len) & 0x3;

		/* the last MSDU has no padding */
		remaining = skb->len - offset;
		if (subframe_len > remaining)
			goto purge;

		offset += sizeof(struct ethhdr);
		last = remaining <= subframe_len + padding;

		/* FIXME: should we really accept multicast DA? */
		if ((check_da && !FUNC7(eth.h_dest) &&
		     !FUNC5(check_da, eth.h_dest)) ||
		    (check_sa && !FUNC5(check_sa, eth.h_source))) {
			offset += len + padding;
			continue;
		}

		/* reuse skb for the last subframe */
		if (!FUNC13(skb) && !reuse_frag && last) {
			FUNC14(skb, offset);
			frame = skb;
			reuse_skb = true;
		} else {
			frame = FUNC1(skb, hlen, offset, len,
						       reuse_frag);
			if (!frame)
				goto purge;

			offset += len + padding;
		}

		FUNC16(frame);
		frame->dev = skb->dev;
		frame->priority = skb->priority;

		payload = frame->data;
		ethertype = (payload[6] << 8) | payload[7];
		if (FUNC8((FUNC5(payload, rfc1042_header) &&
			    ethertype != ETH_P_AARP && ethertype != ETH_P_IPX) ||
			   FUNC5(payload, bridge_tunnel_header))) {
			eth.h_proto = FUNC6(ethertype);
			FUNC14(frame, ETH_ALEN + 2);
		}

		FUNC9(FUNC15(frame, sizeof(eth)), &eth, sizeof(eth));
		FUNC3(list, frame);
	}

	if (!reuse_skb)
		FUNC4(skb);

	return;

 purge:
	FUNC2(list);
	FUNC4(skb);
}