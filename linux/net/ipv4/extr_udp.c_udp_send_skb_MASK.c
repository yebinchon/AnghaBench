#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct udphdr {scalar_t__ check; int /*<<< orphan*/  len; int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;
struct sock {int /*<<< orphan*/  sk_protocol; scalar_t__ sk_no_check_tx; } ;
struct sk_buff {int len; scalar_t__ ip_summed; struct sock* sk; } ;
struct inet_sock {int /*<<< orphan*/  recverr; int /*<<< orphan*/  inet_sport; } ;
struct inet_cork {int gso_size; scalar_t__ fragsize; } ;
struct flowi4 {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  fl4_dport; } ;
typedef  int /*<<< orphan*/  __wsum ;
struct TYPE_2__ {int gso_size; int /*<<< orphan*/  gso_segs; int /*<<< orphan*/  gso_type; } ;

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
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct inet_sock* FUNC6 (struct sock*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int FUNC10 (struct sk_buff*) ; 
 TYPE_1__* FUNC11 (struct sk_buff*) ; 
 int FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 struct udphdr* FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC18(struct sk_buff *skb, struct flowi4 *fl4,
			struct inet_cork *cork)
{
	struct sock *sk = skb->sk;
	struct inet_sock *inet = FUNC6(sk);
	struct udphdr *uh;
	int err = 0;
	int is_udplite = FUNC1(sk);
	int offset = FUNC12(skb);
	int len = skb->len - offset;
	int datalen = len - sizeof(*uh);
	__wsum csum = 0;

	/*
	 * Create a UDP header
	 */
	uh = FUNC16(skb);
	uh->source = inet->inet_sport;
	uh->dest = fl4->fl4_dport;
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
		if (sk->sk_no_check_tx) {
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

	if (is_udplite)  				 /*     UDP-Lite      */
		csum = FUNC17(skb);

	else if (sk->sk_no_check_tx) {			 /* UDP csum off */

		skb->ip_summed = CHECKSUM_NONE;
		goto send;

	} else if (skb->ip_summed == CHECKSUM_PARTIAL) { /* UDP hardware csum */
csum_partial:

		FUNC14(skb, fl4->saddr, fl4->daddr);
		goto send;

	} else
		csum = FUNC15(skb);

	/* add protocol-dependent pseudo-header */
	uh->check = FUNC3(fl4->saddr, fl4->daddr, len,
				      sk->sk_protocol, csum);
	if (uh->check == 0)
		uh->check = CSUM_MANGLED_0;

send:
	err = FUNC7(FUNC13(sk), skb);
	if (err) {
		if (err == -ENOBUFS && !inet->recverr) {
			FUNC2(FUNC13(sk),
				      UDP_MIB_SNDBUFERRORS, is_udplite);
			err = 0;
		}
	} else
		FUNC2(FUNC13(sk),
			      UDP_MIB_OUTDATAGRAMS, is_udplite);
	return err;
}