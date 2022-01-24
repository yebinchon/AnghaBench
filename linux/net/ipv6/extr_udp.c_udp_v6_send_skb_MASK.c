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
struct udphdr {scalar_t__ check; int /*<<< orphan*/  len; int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; scalar_t__ ip_summed; struct sock* sk; } ;
struct inet_cork {int gso_size; scalar_t__ fragsize; } ;
struct flowi6 {int /*<<< orphan*/  flowi6_proto; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  fl6_dport; int /*<<< orphan*/  fl6_sport; } ;
typedef  int /*<<< orphan*/  __wsum ;
struct TYPE_6__ {int /*<<< orphan*/  recverr; } ;
struct TYPE_5__ {int gso_size; int /*<<< orphan*/  gso_segs; int /*<<< orphan*/  gso_type; } ;
struct TYPE_4__ {scalar_t__ no_check6_tx; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_NONE ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 scalar_t__ CSUM_MANGLED_0 ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOBUFS ; 
 int FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  SKB_GSO_UDP_L4 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int UDP_MAX_SEGMENTS ; 
 int /*<<< orphan*/  UDP_MIB_OUTDATAGRAMS ; 
 int /*<<< orphan*/  UDP_MIB_SNDBUFERRORS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_3__* FUNC6 (struct sock*) ; 
 int FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int FUNC10 (struct sk_buff*) ; 
 TYPE_2__* FUNC11 (struct sk_buff*) ; 
 int FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 struct udphdr* FUNC16 (struct sk_buff*) ; 
 TYPE_1__* FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC19(struct sk_buff *skb, struct flowi6 *fl6,
			   struct inet_cork *cork)
{
	struct sock *sk = skb->sk;
	struct udphdr *uh;
	int err = 0;
	int is_udplite = FUNC1(sk);
	__wsum csum = 0;
	int offset = FUNC12(skb);
	int len = skb->len - offset;
	int datalen = len - sizeof(*uh);

	/*
	 * Create a UDP header
	 */
	uh = FUNC16(skb);
	uh->source = fl6->fl6_sport;
	uh->dest = fl6->fl6_dport;
	uh->len = FUNC5(len);
	uh->check = 0;

	if (cork->gso_size) {
		const int hlen = FUNC10(skb) +
				 sizeof(struct udphdr);

		if (hlen + cork->gso_size > cork->fragsize) {
			FUNC8(skb);
			return -EINVAL;
		}
		if (skb->len > cork->gso_size * UDP_MAX_SEGMENTS) {
			FUNC8(skb);
			return -EINVAL;
		}
		if (FUNC17(sk)->no_check6_tx) {
			FUNC8(skb);
			return -EINVAL;
		}
		if (skb->ip_summed != CHECKSUM_PARTIAL || is_udplite ||
		    FUNC4(FUNC9(skb))) {
			FUNC8(skb);
			return -EIO;
		}

		if (datalen > cork->gso_size) {
			FUNC11(skb)->gso_size = cork->gso_size;
			FUNC11(skb)->gso_type = SKB_GSO_UDP_L4;
			FUNC11(skb)->gso_segs = FUNC0(datalen,
								 cork->gso_size);
		}
		goto csum_partial;
	}

	if (is_udplite)
		csum = FUNC18(skb);
	else if (FUNC17(sk)->no_check6_tx) {   /* UDP csum disabled */
		skb->ip_summed = CHECKSUM_NONE;
		goto send;
	} else if (skb->ip_summed == CHECKSUM_PARTIAL) { /* UDP hardware csum */
csum_partial:
		FUNC14(sk, skb, &fl6->saddr, &fl6->daddr, len);
		goto send;
	} else
		csum = FUNC15(skb);

	/* add protocol-dependent pseudo-header */
	uh->check = FUNC3(&fl6->saddr, &fl6->daddr,
				    len, fl6->flowi6_proto, csum);
	if (uh->check == 0)
		uh->check = CSUM_MANGLED_0;

send:
	err = FUNC7(skb);
	if (err) {
		if (err == -ENOBUFS && !FUNC6(sk)->recverr) {
			FUNC2(FUNC13(sk),
				       UDP_MIB_SNDBUFERRORS, is_udplite);
			err = 0;
		}
	} else {
		FUNC2(FUNC13(sk),
			       UDP_MIB_OUTDATAGRAMS, is_udplite);
	}
	return err;
}