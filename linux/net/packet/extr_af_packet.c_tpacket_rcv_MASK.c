#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
union tpacket_uhdr {struct sockaddr_ll* raw; TYPE_5__* h3; TYPE_4__* h2; TYPE_3__* h1; } ;
struct sockaddr_ll {scalar_t__ sll_pkttype; int /*<<< orphan*/  sll_ifindex; int /*<<< orphan*/  sll_protocol; int /*<<< orphan*/  sll_hatype; int /*<<< orphan*/  sll_family; int /*<<< orphan*/  sll_addr; int /*<<< orphan*/  sll_halen; } ;
typedef  struct sockaddr_ll u8 ;
typedef  unsigned int u32 ;
struct virtio_net_hdr {int dummy; } ;
struct timespec {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_17__ {int /*<<< orphan*/  lock; } ;
struct sock {scalar_t__ sk_type; scalar_t__ sk_rcvbuf; int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;TYPE_8__ sk_receive_queue; int /*<<< orphan*/  sk_rmem_alloc; } ;
struct sk_buff {int len; scalar_t__ pkt_type; scalar_t__ ip_summed; struct sockaddr_ll* data; int /*<<< orphan*/  protocol; int /*<<< orphan*/  vlan_proto; } ;
struct packet_type {struct sock* af_packet_priv; } ;
struct TYPE_16__ {unsigned short frame_size; } ;
struct TYPE_11__ {int /*<<< orphan*/  tp_packets; } ;
struct TYPE_12__ {TYPE_1__ stats1; } ;
struct packet_sock {unsigned short tp_hdrlen; int tp_reserve; int tp_version; int origdev; int /*<<< orphan*/  tp_drops; TYPE_6__ rx_ring; int /*<<< orphan*/  tp_tstamp; TYPE_2__ stats; scalar_t__ copy_thresh; scalar_t__ has_vnet_hdr; } ;
struct net_device {int /*<<< orphan*/  ifindex; int /*<<< orphan*/  type; scalar_t__ header_ops; } ;
typedef  unsigned long __u32 ;
struct TYPE_18__ {unsigned short max_frame_len; } ;
struct TYPE_15__ {unsigned long tp_status; unsigned int tp_len; unsigned int tp_snaplen; unsigned short tp_mac; unsigned short tp_net; int tp_nsec; int /*<<< orphan*/  tp_padding; int /*<<< orphan*/  tp_sec; } ;
struct TYPE_14__ {unsigned int tp_len; unsigned int tp_snaplen; unsigned short tp_mac; unsigned short tp_net; int tp_nsec; int /*<<< orphan*/  tp_padding; int /*<<< orphan*/  tp_vlan_tpid; int /*<<< orphan*/  tp_vlan_tci; int /*<<< orphan*/  tp_sec; } ;
struct TYPE_13__ {unsigned int tp_len; unsigned int tp_snaplen; unsigned short tp_mac; unsigned short tp_net; int tp_usec; int /*<<< orphan*/  tp_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_PACKET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ CHECKSUM_COMPLETE ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 TYPE_9__* FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NSEC_PER_USEC ; 
 scalar_t__ PACKET_LOOPBACK ; 
 scalar_t__ PACKET_OUTGOING ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ ROOM_NONE ; 
 scalar_t__ SOCK_DGRAM ; 
 int FUNC4 (unsigned short) ; 
#define  TPACKET_V1 130 
#define  TPACKET_V2 129 
#define  TPACKET_V3 128 
 unsigned long TP_STATUS_COPY ; 
 unsigned long TP_STATUS_CSUMNOTREADY ; 
 unsigned long TP_STATUS_CSUM_VALID ; 
 int /*<<< orphan*/  TP_STATUS_KERNEL ; 
 unsigned long TP_STATUS_LOSING ; 
 unsigned long TP_STATUS_USER ; 
 unsigned long TP_STATUS_VLAN_TPID_VALID ; 
 unsigned long TP_STATUS_VLAN_VALID ; 
 scalar_t__ FUNC5 (struct packet_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct packet_sock*,struct sockaddr_ll*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 struct sockaddr_ll* FUNC19 (struct packet_sock*,struct sk_buff*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC20 (struct packet_sock*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC21 (struct sockaddr_ll*) ; 
 struct packet_sock* FUNC22 (struct sock*) ; 
 int /*<<< orphan*/  FUNC23 (char*,unsigned int,unsigned int,unsigned short) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_6__*) ; 
 unsigned int FUNC25 (struct sk_buff*,struct sock*,unsigned int) ; 
 struct sk_buff* FUNC26 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct sk_buff*,int /*<<< orphan*/ ,struct sockaddr_ll*,unsigned int) ; 
 scalar_t__ FUNC28 (struct sk_buff*) ; 
 struct sk_buff* FUNC29 (struct sk_buff*) ; 
 int FUNC30 (struct sk_buff*) ; 
 unsigned int FUNC31 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC32 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC33 (struct sk_buff*,struct sockaddr_ll*) ; 
 int /*<<< orphan*/  FUNC34 (struct sk_buff*,struct sock*) ; 
 scalar_t__ FUNC35 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC36 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC37 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC38 () ; 
 int /*<<< orphan*/  FUNC39 () ; 
 int /*<<< orphan*/  FUNC40 (struct sock*) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC43 (struct sock*) ; 
 int /*<<< orphan*/  FUNC44 (struct sock*) ; 
 unsigned long FUNC45 (struct sk_buff*,struct timespec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC46 (int) ; 
 int /*<<< orphan*/  FUNC47 () ; 
 scalar_t__ FUNC48 (struct sk_buff*,struct sockaddr_ll*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC49(struct sk_buff *skb, struct net_device *dev,
		       struct packet_type *pt, struct net_device *orig_dev)
{
	struct sock *sk;
	struct packet_sock *po;
	struct sockaddr_ll *sll;
	union tpacket_uhdr h;
	u8 *skb_head = skb->data;
	int skb_len = skb->len;
	unsigned int snaplen, res;
	unsigned long status = TP_STATUS_USER;
	unsigned short macoff, netoff, hdrlen;
	struct sk_buff *copy_skb = NULL;
	struct timespec ts;
	__u32 ts_status;
	bool is_drop_n_account = false;
	bool do_vnet = false;

	/* struct tpacket{2,3}_hdr is aligned to a multiple of TPACKET_ALIGNMENT.
	 * We may add members to them until current aligned size without forcing
	 * userspace to call getsockopt(..., PACKET_HDRLEN, ...).
	 */
	FUNC1(FUNC4(sizeof(*h.h2)) != 32);
	FUNC1(FUNC4(sizeof(*h.h3)) != 48);

	if (skb->pkt_type == PACKET_LOOPBACK)
		goto drop;

	sk = pt->af_packet_priv;
	po = FUNC22(sk);

	if (!FUNC17(FUNC11(dev), FUNC40(sk)))
		goto drop;

	if (dev->header_ops) {
		if (sk->sk_type != SOCK_DGRAM)
			FUNC33(skb, skb->data - FUNC30(skb));
		else if (skb->pkt_type == PACKET_OUTGOING) {
			/* Special case: outgoing packets have ll header at head */
			FUNC32(skb, FUNC31(skb));
		}
	}

	snaplen = skb->len;

	res = FUNC25(skb, sk, snaplen);
	if (!res)
		goto drop_n_restore;

	/* If we are flooded, just give up */
	if (FUNC5(po, skb) == ROOM_NONE) {
		FUNC8(&po->tp_drops);
		goto drop_n_restore;
	}

	if (skb->ip_summed == CHECKSUM_PARTIAL)
		status |= TP_STATUS_CSUMNOTREADY;
	else if (skb->pkt_type != PACKET_OUTGOING &&
		 (skb->ip_summed == CHECKSUM_COMPLETE ||
		  FUNC28(skb)))
		status |= TP_STATUS_CSUM_VALID;

	if (snaplen > res)
		snaplen = res;

	if (sk->sk_type == SOCK_DGRAM) {
		macoff = netoff = FUNC4(po->tp_hdrlen) + 16 +
				  po->tp_reserve;
	} else {
		unsigned int maclen = FUNC31(skb);
		netoff = FUNC4(po->tp_hdrlen +
				       (maclen < 16 ? 16 : maclen)) +
				       po->tp_reserve;
		if (po->has_vnet_hdr) {
			netoff += sizeof(struct virtio_net_hdr);
			do_vnet = true;
		}
		macoff = netoff - maclen;
	}
	if (po->tp_version <= TPACKET_V2) {
		if (macoff + snaplen > po->rx_ring.frame_size) {
			if (po->copy_thresh &&
			    FUNC9(&sk->sk_rmem_alloc) < sk->sk_rcvbuf) {
				if (FUNC35(skb)) {
					copy_skb = FUNC26(skb, GFP_ATOMIC);
				} else {
					copy_skb = FUNC29(skb);
					skb_head = skb->data;
				}
				if (copy_skb)
					FUNC34(copy_skb, sk);
			}
			snaplen = po->rx_ring.frame_size - macoff;
			if ((int)snaplen < 0) {
				snaplen = 0;
				do_vnet = false;
			}
		}
	} else if (FUNC46(macoff + snaplen >
			    FUNC2(&po->rx_ring)->max_frame_len)) {
		u32 nval;

		nval = FUNC2(&po->rx_ring)->max_frame_len - macoff;
		FUNC23("tpacket_rcv: packet too big, clamped from %u to %u. macoff=%u\n",
			    snaplen, nval, macoff);
		snaplen = nval;
		if (FUNC46((int)snaplen < 0)) {
			snaplen = 0;
			macoff = FUNC2(&po->rx_ring)->max_frame_len;
			do_vnet = false;
		}
	}
	FUNC41(&sk->sk_receive_queue.lock);
	h.raw = FUNC19(po, skb,
					TP_STATUS_KERNEL, (macoff+snaplen));
	if (!h.raw)
		goto drop_n_account;
	if (po->tp_version <= TPACKET_V2) {
		FUNC20(po, &po->rx_ring);
	/*
	 * LOSING will be reported till you read the stats,
	 * because it's COR - Clear On Read.
	 * Anyways, moving it for V1/V2 only as V3 doesn't need this
	 * at packet level.
	 */
		if (FUNC9(&po->tp_drops))
			status |= TP_STATUS_LOSING;
	}

	if (do_vnet &&
	    FUNC48(skb, h.raw + macoff -
				    sizeof(struct virtio_net_hdr),
				    FUNC47(), true, 0))
		goto drop_n_account;

	po->stats.stats1.tp_packets++;
	if (copy_skb) {
		status |= TP_STATUS_COPY;
		FUNC7(&sk->sk_receive_queue, copy_skb);
	}
	FUNC42(&sk->sk_receive_queue.lock);

	FUNC27(skb, 0, h.raw + macoff, snaplen);

	if (!(ts_status = FUNC45(skb, &ts, po->tp_tstamp)))
		FUNC14(&ts);

	status |= ts_status;

	switch (po->tp_version) {
	case TPACKET_V1:
		h.h1->tp_len = skb->len;
		h.h1->tp_snaplen = snaplen;
		h.h1->tp_mac = macoff;
		h.h1->tp_net = netoff;
		h.h1->tp_sec = ts.tv_sec;
		h.h1->tp_usec = ts.tv_nsec / NSEC_PER_USEC;
		hdrlen = sizeof(*h.h1);
		break;
	case TPACKET_V2:
		h.h2->tp_len = skb->len;
		h.h2->tp_snaplen = snaplen;
		h.h2->tp_mac = macoff;
		h.h2->tp_net = netoff;
		h.h2->tp_sec = ts.tv_sec;
		h.h2->tp_nsec = ts.tv_nsec;
		if (FUNC37(skb)) {
			h.h2->tp_vlan_tci = FUNC36(skb);
			h.h2->tp_vlan_tpid = FUNC18(skb->vlan_proto);
			status |= TP_STATUS_VLAN_VALID | TP_STATUS_VLAN_TPID_VALID;
		} else {
			h.h2->tp_vlan_tci = 0;
			h.h2->tp_vlan_tpid = 0;
		}
		FUNC16(h.h2->tp_padding, 0, sizeof(h.h2->tp_padding));
		hdrlen = sizeof(*h.h2);
		break;
	case TPACKET_V3:
		/* tp_nxt_offset,vlan are already populated above.
		 * So DONT clear those fields here
		 */
		h.h3->tp_status |= status;
		h.h3->tp_len = skb->len;
		h.h3->tp_snaplen = snaplen;
		h.h3->tp_mac = macoff;
		h.h3->tp_net = netoff;
		h.h3->tp_sec  = ts.tv_sec;
		h.h3->tp_nsec = ts.tv_nsec;
		FUNC16(h.h3->tp_padding, 0, sizeof(h.h3->tp_padding));
		hdrlen = sizeof(*h.h3);
		break;
	default:
		FUNC0();
	}

	sll = h.raw + FUNC4(hdrlen);
	sll->sll_halen = FUNC12(skb, sll->sll_addr);
	sll->sll_family = AF_PACKET;
	sll->sll_hatype = dev->type;
	sll->sll_protocol = skb->protocol;
	sll->sll_pkttype = skb->pkt_type;
	if (FUNC46(po->origdev))
		sll->sll_ifindex = orig_dev->ifindex;
	else
		sll->sll_ifindex = dev->ifindex;

	FUNC38();

#if ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE == 1
	if (po->tp_version <= TPACKET_V2) {
		u8 *start, *end;

		end = (u8 *) PAGE_ALIGN((unsigned long) h.raw +
					macoff + snaplen);

		for (start = h.raw; start < end; start += PAGE_SIZE)
			flush_dcache_page(pgv_to_page(start));
	}
	smp_wmb();
#endif

	if (po->tp_version <= TPACKET_V2) {
		FUNC6(po, h.raw, status);
		sk->sk_data_ready(sk);
	} else {
		FUNC24(&po->rx_ring);
	}

drop_n_restore:
	if (skb_head != skb->data && FUNC35(skb)) {
		skb->data = skb_head;
		skb->len = skb_len;
	}
drop:
	if (!is_drop_n_account)
		FUNC10(skb);
	else
		FUNC15(skb);
	return 0;

drop_n_account:
	FUNC42(&sk->sk_receive_queue.lock);
	FUNC8(&po->tp_drops);
	is_drop_n_account = true;

	sk->sk_data_ready(sk);
	FUNC15(copy_skb);
	goto drop_n_restore;
}