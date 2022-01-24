#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sockaddr_ll {scalar_t__ sll_pkttype; int /*<<< orphan*/  sll_addr; int /*<<< orphan*/  sll_halen; int /*<<< orphan*/  sll_ifindex; int /*<<< orphan*/  sll_hatype; } ;
struct TYPE_9__ {int /*<<< orphan*/  lock; } ;
struct sock {scalar_t__ sk_type; scalar_t__ sk_rcvbuf; int /*<<< orphan*/  sk_drops; int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;TYPE_4__ sk_receive_queue; int /*<<< orphan*/  sk_rmem_alloc; } ;
struct sk_buff {int len; scalar_t__ pkt_type; int /*<<< orphan*/ * data; struct net_device* dev; } ;
struct packet_type {struct sock* af_packet_priv; } ;
struct TYPE_7__ {int /*<<< orphan*/  tp_packets; } ;
struct TYPE_8__ {TYPE_2__ stats1; } ;
struct packet_sock {int /*<<< orphan*/  tp_drops; TYPE_3__ stats; int /*<<< orphan*/  origdev; } ;
struct net_device {int /*<<< orphan*/  ifindex; int /*<<< orphan*/  type; scalar_t__ header_ops; } ;
struct TYPE_6__ {int origlen; struct sockaddr_ll ll; } ;
struct TYPE_10__ {TYPE_1__ sa; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MAX_ADDR_LEN ; 
 scalar_t__ PACKET_LOOPBACK ; 
 scalar_t__ PACKET_OUTGOING ; 
 TYPE_5__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct packet_sock* FUNC10 (struct sock*) ; 
 scalar_t__ FUNC11 (struct sk_buff*,unsigned int) ; 
 unsigned int FUNC12 (struct sk_buff*,struct sock*,unsigned int) ; 
 struct sk_buff* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,struct sock*) ; 
 scalar_t__ FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct sock*) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC28(struct sk_buff *skb, struct net_device *dev,
		      struct packet_type *pt, struct net_device *orig_dev)
{
	struct sock *sk;
	struct sockaddr_ll *sll;
	struct packet_sock *po;
	u8 *skb_head = skb->data;
	int skb_len = skb->len;
	unsigned int snaplen, res;
	bool is_drop_n_account = false;

	if (skb->pkt_type == PACKET_LOOPBACK)
		goto drop;

	sk = pt->af_packet_priv;
	po = FUNC10(sk);

	if (!FUNC8(FUNC5(dev), FUNC21(sk)))
		goto drop;

	skb->dev = dev;

	if (dev->header_ops) {
		/* The device has an explicit notion of ll header,
		 * exported to higher levels.
		 *
		 * Otherwise, the device hides details of its frame
		 * structure, so that corresponding packet head is
		 * never delivered to user.
		 */
		if (sk->sk_type != SOCK_DGRAM)
			FUNC18(skb, skb->data - FUNC15(skb));
		else if (skb->pkt_type == PACKET_OUTGOING) {
			/* Special case: outgoing packets have ll header at head */
			FUNC17(skb, FUNC16(skb));
		}
	}

	snaplen = skb->len;

	res = FUNC12(skb, sk, snaplen);
	if (!res)
		goto drop_n_restore;
	if (snaplen > res)
		snaplen = res;

	if (FUNC3(&sk->sk_rmem_alloc) >= sk->sk_rcvbuf)
		goto drop_n_acct;

	if (FUNC20(skb)) {
		struct sk_buff *nskb = FUNC13(skb, GFP_ATOMIC);
		if (nskb == NULL)
			goto drop_n_acct;

		if (skb_head != skb->data) {
			skb->data = skb_head;
			skb->len = skb_len;
		}
		FUNC4(skb);
		skb = nskb;
	}

	FUNC22(sizeof(*FUNC0(skb)) + MAX_ADDR_LEN - 8);

	sll = &FUNC0(skb)->sa.ll;
	sll->sll_hatype = dev->type;
	sll->sll_pkttype = skb->pkt_type;
	if (FUNC27(po->origdev))
		sll->sll_ifindex = orig_dev->ifindex;
	else
		sll->sll_ifindex = dev->ifindex;

	sll->sll_halen = FUNC6(skb, sll->sll_addr);

	/* sll->sll_family and sll->sll_protocol are set in packet_recvmsg().
	 * Use their space for storing the original skb length.
	 */
	FUNC0(skb)->sa.origlen = skb->len;

	if (FUNC11(skb, snaplen))
		goto drop_n_acct;

	FUNC19(skb, sk);
	skb->dev = NULL;
	FUNC14(skb);

	/* drop conntrack reference */
	FUNC9(skb);

	FUNC24(&sk->sk_receive_queue.lock);
	po->stats.stats1.tp_packets++;
	FUNC23(sk, skb);
	FUNC1(&sk->sk_receive_queue, skb);
	FUNC25(&sk->sk_receive_queue.lock);
	sk->sk_data_ready(sk);
	return 0;

drop_n_acct:
	is_drop_n_account = true;
	FUNC2(&po->tp_drops);
	FUNC2(&sk->sk_drops);

drop_n_restore:
	if (skb_head != skb->data && FUNC20(skb)) {
		skb->data = skb_head;
		skb->len = skb_len;
	}
drop:
	if (!is_drop_n_account)
		FUNC4(skb);
	else
		FUNC7(skb);
	return 0;
}