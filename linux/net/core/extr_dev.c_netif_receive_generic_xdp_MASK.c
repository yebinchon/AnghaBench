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
typedef  int u32 ;
struct xdp_buff {void* data; void* data_meta; void* data_end; int /*<<< orphan*/ * rxq; scalar_t__ data_hard_start; } ;
struct sk_buff {int tail; int data_len; int end; int data; int mac_header; int len; int /*<<< orphan*/  dev; int /*<<< orphan*/  protocol; } ;
struct netdev_rx_queue {int /*<<< orphan*/  xdp_rxq; } ;
struct ethhdr {scalar_t__ h_proto; int /*<<< orphan*/  h_dest; } ;
struct bpf_prog {int dummy; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NET_SKB_PAD ; 
#define  XDP_ABORTED 132 
#define  XDP_DROP 131 
 scalar_t__ XDP_PACKET_HEADROOM ; 
#define  XDP_PASS 130 
#define  XDP_REDIRECT 129 
#define  XDP_TX 128 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int FUNC3 (struct bpf_prog*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct netdev_rx_queue* FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 int FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (struct sk_buff*) ; 
 int FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct bpf_prog*,int) ; 

__attribute__((used)) static u32 FUNC21(struct sk_buff *skb,
				     struct xdp_buff *xdp,
				     struct bpf_prog *xdp_prog)
{
	struct netdev_rx_queue *rxqueue;
	void *orig_data, *orig_data_end;
	u32 metalen, act = XDP_DROP;
	__be16 orig_eth_type;
	struct ethhdr *eth;
	bool orig_bcast;
	int hlen, off;
	u32 mac_len;

	/* Reinjected packets coming from act_mirred or similar should
	 * not get XDP generic processing.
	 */
	if (FUNC10(skb) || FUNC14(skb))
		return XDP_PASS;

	/* XDP packets must be linear and must have sufficient headroom
	 * of XDP_PACKET_HEADROOM bytes. This is the guarantee that also
	 * native XDP provides, thus we need to do it here as well.
	 */
	if (FUNC13(skb) ||
	    FUNC12(skb) < XDP_PACKET_HEADROOM) {
		int hroom = XDP_PACKET_HEADROOM - FUNC12(skb);
		int troom = skb->tail + skb->data_len - skb->end;

		/* In case we have to go down the path and also linearize,
		 * then lets do the pskb_expand_head() work just once here.
		 */
		if (FUNC9(skb,
				     hroom > 0 ? FUNC0(hroom, NET_SKB_PAD) : 0,
				     troom > 0 ? troom + 128 : 0, GFP_ATOMIC))
			goto do_drop;
		if (FUNC15(skb))
			goto do_drop;
	}

	/* The XDP program wants to see the packet starting at the MAC
	 * header.
	 */
	mac_len = skb->data - FUNC16(skb);
	hlen = FUNC11(skb) + mac_len;
	xdp->data = skb->data - mac_len;
	xdp->data_meta = xdp->data;
	xdp->data_end = xdp->data + hlen;
	xdp->data_hard_start = skb->data - FUNC12(skb);
	orig_data_end = xdp->data_end;
	orig_data = xdp->data;
	eth = (struct ethhdr *)xdp->data;
	orig_bcast = FUNC6(eth->h_dest);
	orig_eth_type = eth->h_proto;

	rxqueue = FUNC8(skb);
	xdp->rxq = &rxqueue->xdp_rxq;

	act = FUNC3(xdp_prog, xdp);

	/* check if bpf_xdp_adjust_head was used */
	off = xdp->data - orig_data;
	if (off) {
		if (off > 0)
			FUNC1(skb, off);
		else if (off < 0)
			FUNC2(skb, -off);

		skb->mac_header += off;
		FUNC18(skb);
	}

	/* check if bpf_xdp_adjust_tail was used. it can only "shrink"
	 * pckt.
	 */
	off = orig_data_end - xdp->data_end;
	if (off != 0) {
		FUNC19(skb, xdp->data_end - xdp->data);
		skb->len -= off;

	}

	/* check if XDP changed eth hdr such SKB needs update */
	eth = (struct ethhdr *)xdp->data;
	if ((orig_eth_type != eth->h_proto) ||
	    (orig_bcast != FUNC6(eth->h_dest))) {
		FUNC2(skb, ETH_HLEN);
		skb->protocol = FUNC5(skb, skb->dev);
	}

	switch (act) {
	case XDP_REDIRECT:
	case XDP_TX:
		FUNC2(skb, mac_len);
		break;
	case XDP_PASS:
		metalen = xdp->data - xdp->data_meta;
		if (metalen)
			FUNC17(skb, metalen);
		break;
	default:
		FUNC4(act);
		/* fall through */
	case XDP_ABORTED:
		FUNC20(skb->dev, xdp_prog, act);
		/* fall through */
	case XDP_DROP:
	do_drop:
		FUNC7(skb);
		break;
	}

	return act;
}