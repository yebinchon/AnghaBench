#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct TYPE_12__ {struct rb_node* rb_node; } ;
struct TYPE_9__ {int num_sacks; } ;
struct tcp_sock {struct sk_buff* ooo_last_skb; TYPE_4__ out_of_order_queue; TYPE_2__* selective_acks; TYPE_1__ rx_opt; int /*<<< orphan*/  rcv_ooopack; scalar_t__ pred_flags; } ;
struct sock {int dummy; } ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct sk_buff {struct rb_node rbnode; int /*<<< orphan*/  truesize; } ;
struct TYPE_13__ {void* seq; void* end_seq; } ;
struct TYPE_11__ {int /*<<< orphan*/  gso_segs; } ;
struct TYPE_10__ {void* end_seq; void* start_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_TCPOFODROP ; 
 int /*<<< orphan*/  LINUX_MIB_TCPOFOMERGE ; 
 int /*<<< orphan*/  LINUX_MIB_TCPOFOQUEUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 TYPE_7__* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (void*,void*) ; 
 scalar_t__ FUNC4 (void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rb_node*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (struct rb_node*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (struct rb_node*,struct rb_node*,struct rb_node**) ; 
 int /*<<< orphan*/  FUNC11 (struct rb_node*,struct rb_node*,TYPE_4__*) ; 
 struct sk_buff* FUNC12 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 struct sk_buff* FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,struct sock*) ; 
 TYPE_3__* FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*,void*,void*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*,void*,void*) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC23 (struct tcp_sock*) ; 
 scalar_t__ FUNC24 (struct sock*,struct sk_buff*,struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC25 (struct sock*,void*,void*) ; 
 struct tcp_sock* FUNC26 (struct sock*) ; 
 int /*<<< orphan*/  FUNC27 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u16 ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC29(struct sock *sk, struct sk_buff *skb)
{
	struct tcp_sock *tp = FUNC26(sk);
	struct rb_node **p, *parent;
	struct sk_buff *skb1;
	u32 seq, end_seq;
	bool fragstolen;

	FUNC21(sk, skb);

	if (FUNC28(FUNC27(sk, skb, skb->truesize))) {
		FUNC0(FUNC17(sk), LINUX_MIB_TCPOFODROP);
		FUNC18(sk, skb);
		return;
	}

	/* Disable header prediction. */
	tp->pred_flags = 0;
	FUNC5(sk);

	tp->rcv_ooopack += FUNC7(u16, 1, FUNC16(skb)->gso_segs);
	FUNC0(FUNC17(sk), LINUX_MIB_TCPOFOQUEUE);
	seq = FUNC2(skb)->seq;
	end_seq = FUNC2(skb)->end_seq;

	p = &tp->out_of_order_queue.rb_node;
	if (FUNC1(&tp->out_of_order_queue)) {
		/* Initial out of order segment, build 1 SACK. */
		if (FUNC23(tp)) {
			tp->rx_opt.num_sacks = 1;
			tp->selective_acks[0].start_seq = seq;
			tp->selective_acks[0].end_seq = end_seq;
		}
		FUNC10(&skb->rbnode, NULL, p);
		FUNC9(&skb->rbnode, &tp->out_of_order_queue);
		tp->ooo_last_skb = skb;
		goto end;
	}

	/* In the typical case, we are adding an skb to the end of the list.
	 * Use of ooo_last_skb avoids the O(Log(N)) rbtree lookup.
	 */
	if (FUNC24(sk, tp->ooo_last_skb,
				 skb, &fragstolen)) {
coalesce_done:
		FUNC22(sk, skb);
		FUNC6(skb, fragstolen);
		skb = NULL;
		goto add_sack;
	}
	/* Can avoid an rbtree lookup if we are adding skb after ooo_last_skb */
	if (!FUNC4(seq, FUNC2(tp->ooo_last_skb)->end_seq)) {
		parent = &tp->ooo_last_skb->rbnode;
		p = &parent->rb_right;
		goto insert;
	}

	/* Find place to insert this segment. Handle overlaps on the way. */
	parent = NULL;
	while (*p) {
		parent = *p;
		skb1 = FUNC12(parent);
		if (FUNC4(seq, FUNC2(skb1)->seq)) {
			p = &parent->rb_left;
			continue;
		}
		if (FUNC4(seq, FUNC2(skb1)->end_seq)) {
			if (!FUNC3(end_seq, FUNC2(skb1)->end_seq)) {
				/* All the bits are present. Drop. */
				FUNC0(FUNC17(sk),
					      LINUX_MIB_TCPOFOMERGE);
				FUNC18(sk, skb);
				skb = NULL;
				FUNC20(sk, seq, end_seq);
				goto add_sack;
			}
			if (FUNC3(seq, FUNC2(skb1)->seq)) {
				/* Partial overlap. */
				FUNC20(sk, seq, FUNC2(skb1)->end_seq);
			} else {
				/* skb's seq == skb1's seq and skb covers skb1.
				 * Replace skb1 with skb.
				 */
				FUNC11(&skb1->rbnode, &skb->rbnode,
						&tp->out_of_order_queue);
				FUNC19(sk,
						 FUNC2(skb1)->seq,
						 FUNC2(skb1)->end_seq);
				FUNC0(FUNC17(sk),
					      LINUX_MIB_TCPOFOMERGE);
				FUNC18(sk, skb1);
				goto merge_right;
			}
		} else if (FUNC24(sk, skb1,
						skb, &fragstolen)) {
			goto coalesce_done;
		}
		p = &parent->rb_right;
	}
insert:
	/* Insert segment into RB tree. */
	FUNC10(&skb->rbnode, parent, p);
	FUNC9(&skb->rbnode, &tp->out_of_order_queue);

merge_right:
	/* Remove other segments covered by skb. */
	while ((skb1 = FUNC14(skb)) != NULL) {
		if (!FUNC3(end_seq, FUNC2(skb1)->seq))
			break;
		if (FUNC4(end_seq, FUNC2(skb1)->end_seq)) {
			FUNC19(sk, FUNC2(skb1)->seq,
					 end_seq);
			break;
		}
		FUNC8(&skb1->rbnode, &tp->out_of_order_queue);
		FUNC19(sk, FUNC2(skb1)->seq,
				 FUNC2(skb1)->end_seq);
		FUNC0(FUNC17(sk), LINUX_MIB_TCPOFOMERGE);
		FUNC18(sk, skb1);
	}
	/* If there is no skb after us, we are the last_skb ! */
	if (!skb1)
		tp->ooo_last_skb = skb;

add_sack:
	if (FUNC23(tp))
		FUNC25(sk, seq, end_seq);
end:
	if (skb) {
		FUNC22(sk, skb);
		FUNC13(skb);
		FUNC15(skb, sk);
	}
}