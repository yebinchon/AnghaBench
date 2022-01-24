#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union sctp_addr {int dummy; } sctp_addr ;
struct sock {scalar_t__ sk_bound_dev_if; } ;
struct sk_buff {scalar_t__ pkt_type; scalar_t__ len; int csum_valid; int /*<<< orphan*/  dev; } ;
struct sctphdr {int dummy; } ;
struct sctp_transport {int dummy; } ;
struct sctp_ep_common {int /*<<< orphan*/  inqueue; struct sock* sk; } ;
struct sctp_endpoint {struct sctp_ep_common base; } ;
struct sctp_chunkhdr {int dummy; } ;
struct sctp_chunk {struct sctp_ep_common* rcvr; struct sctp_transport* transport; int /*<<< orphan*/  sctp_hdr; } ;
struct sctp_association {struct sctp_ep_common base; } ;
struct sctp_af {scalar_t__ (* skb_iif ) (struct sk_buff*) ;int /*<<< orphan*/  (* addr_valid ) (union sctp_addr*,int /*<<< orphan*/ *,struct sk_buff*) ;int /*<<< orphan*/  (* from_skb ) (union sctp_addr*,struct sk_buff*,int) ;} ;
struct TYPE_5__ {struct sock* ctl_sock; } ;
struct net {TYPE_1__ sctp; } ;
struct TYPE_8__ {struct sctp_chunk* chunk; struct sctp_af* af; } ;
struct TYPE_7__ {int /*<<< orphan*/  version; } ;
struct TYPE_6__ {struct sctp_endpoint* ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ PACKET_HOST ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  SCTP_MIB_INSCTPPACKS ; 
 int /*<<< orphan*/  SCTP_MIB_IN_PKT_BACKLOG ; 
 int /*<<< orphan*/  SCTP_MIB_IN_PKT_DISCARDS ; 
 int /*<<< orphan*/  SCTP_MIB_IN_PKT_SOFTIRQ ; 
 int /*<<< orphan*/  SCTP_MIB_OUTOFBLUES ; 
 int /*<<< orphan*/  XFRM_POLICY_IN ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 struct sctp_association* FUNC2 (struct net*,struct sk_buff*,union sctp_addr*,union sctp_addr*,struct sctp_transport**) ; 
 struct sctp_endpoint* FUNC3 (struct net*,struct sk_buff*,union sctp_addr*,union sctp_addr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 struct net* FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (struct sk_buff*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 scalar_t__ FUNC14 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  sctp_checksum_disable ; 
 int /*<<< orphan*/  FUNC15 (struct sctp_chunk*) ; 
 struct sctp_chunk* FUNC16 (struct sk_buff*,struct sctp_association*,struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sctp_endpoint*) ; 
 int /*<<< orphan*/  FUNC18 (struct sctp_endpoint*) ; 
 struct sctp_af* FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sctp_chunk*,union sctp_addr*,union sctp_addr*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC23 (struct sock*) ; 
 scalar_t__ FUNC24 (struct net*,struct sk_buff*) ; 
 scalar_t__ FUNC25 (struct sk_buff*) ; 
 TYPE_2__* FUNC26 (struct sock*) ; 
 int /*<<< orphan*/  FUNC27 (struct sctp_transport*) ; 
 scalar_t__ FUNC28 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC29 (struct sk_buff*) ; 
 scalar_t__ FUNC30 (struct sk_buff*) ; 
 scalar_t__ FUNC31 (struct sk_buff*) ; 
 scalar_t__ FUNC32 (struct sk_buff*) ; 
 int FUNC33 (struct sk_buff*) ; 
 scalar_t__ FUNC34 (struct sock*) ; 
 int /*<<< orphan*/  FUNC35 (union sctp_addr*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC36 (union sctp_addr*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC37 (union sctp_addr*,int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC38 (union sctp_addr*,int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC39 (struct sk_buff*) ; 
 scalar_t__ FUNC40 (int) ; 
 int /*<<< orphan*/  FUNC41 (struct sock*,int /*<<< orphan*/ ,struct sk_buff*,int) ; 

int FUNC42(struct sk_buff *skb)
{
	struct sock *sk;
	struct sctp_association *asoc;
	struct sctp_endpoint *ep = NULL;
	struct sctp_ep_common *rcvr;
	struct sctp_transport *transport = NULL;
	struct sctp_chunk *chunk;
	union sctp_addr src;
	union sctp_addr dest;
	int family;
	struct sctp_af *af;
	struct net *net = FUNC8(skb->dev);
	bool is_gso = FUNC30(skb) && FUNC31(skb);

	if (skb->pkt_type != PACKET_HOST)
		goto discard_it;

	FUNC1(net, SCTP_MIB_INSCTPPACKS);

	/* If packet is too small to contain a single chunk, let's not
	 * waste time on it anymore.
	 */
	if (skb->len < sizeof(struct sctphdr) + sizeof(struct sctp_chunkhdr) +
		       FUNC33(skb))
		goto discard_it;

	/* If the packet is fragmented and we need to do crc checking,
	 * it's better to just linearize it otherwise crc computing
	 * takes longer.
	 */
	if ((!is_gso && FUNC32(skb)) ||
	    !FUNC13(skb, sizeof(struct sctphdr)))
		goto discard_it;

	/* Pull up the IP header. */
	FUNC5(skb, FUNC33(skb));

	skb->csum_valid = 0; /* Previous value not applicable */
	if (FUNC29(skb))
		FUNC4(skb);
	else if (!sctp_checksum_disable &&
		 !is_gso &&
		 FUNC24(net, skb) < 0)
		goto discard_it;
	skb->csum_valid = 1;

	FUNC5(skb, sizeof(struct sctphdr));

	family = FUNC10(FUNC9(skb)->version);
	af = FUNC19(family);
	if (FUNC40(!af))
		goto discard_it;
	FUNC0(skb)->af = af;

	/* Initialize local addresses for lookups. */
	af->from_skb(&src, skb, 1);
	af->from_skb(&dest, skb, 0);

	/* If the packet is to or from a non-unicast address,
	 * silently discard the packet.
	 *
	 * This is not clearly defined in the RFC except in section
	 * 8.4 - OOTB handling.  However, based on the book "Stream Control
	 * Transmission Protocol" 2.1, "It is important to note that the
	 * IP address of an SCTP transport address must be a routable
	 * unicast address.  In other words, IP multicast addresses and
	 * IP broadcast addresses cannot be used in an SCTP transport
	 * address."
	 */
	if (!af->addr_valid(&src, NULL, skb) ||
	    !af->addr_valid(&dest, NULL, skb))
		goto discard_it;

	asoc = FUNC2(net, skb, &src, &dest, &transport);

	if (!asoc)
		ep = FUNC3(net, skb, &dest, &src);

	/* Retrieve the common input handling substructure. */
	rcvr = asoc ? &asoc->base : &ep->base;
	sk = rcvr->sk;

	/*
	 * If a frame arrives on an interface and the receiving socket is
	 * bound to another interface, via SO_BINDTODEVICE, treat it as OOTB
	 */
	if (sk->sk_bound_dev_if && (sk->sk_bound_dev_if != af->skb_iif(skb))) {
		if (transport) {
			FUNC27(transport);
			asoc = NULL;
			transport = NULL;
		} else {
			FUNC18(ep);
			ep = NULL;
		}
		sk = net->sctp.ctl_sock;
		ep = FUNC26(sk)->ep;
		FUNC17(ep);
		rcvr = &ep->base;
	}

	/*
	 * RFC 2960, 8.4 - Handle "Out of the blue" Packets.
	 * An SCTP packet is called an "out of the blue" (OOTB)
	 * packet if it is correctly formed, i.e., passed the
	 * receiver's checksum check, but the receiver is not
	 * able to identify the association to which this
	 * packet belongs.
	 */
	if (!asoc) {
		if (FUNC25(skb)) {
			FUNC1(net, SCTP_MIB_OUTOFBLUES);
			goto discard_release;
		}
	}

	if (!FUNC41(sk, XFRM_POLICY_IN, skb, family))
		goto discard_release;
	FUNC12(skb);

	if (FUNC28(sk, skb))
		goto discard_release;

	/* Create an SCTP packet structure. */
	chunk = FUNC16(skb, asoc, sk, GFP_ATOMIC);
	if (!chunk)
		goto discard_release;
	FUNC0(skb)->chunk = chunk;

	/* Remember what endpoint is to handle this packet. */
	chunk->rcvr = rcvr;

	/* Remember the SCTP header. */
	chunk->sctp_hdr = FUNC20(skb);

	/* Set the source and destination addresses of the incoming chunk.  */
	FUNC21(chunk, &src, &dest);

	/* Remember where we came from.  */
	chunk->transport = transport;

	/* Acquire access to the sock lock. Note: We are safe from other
	 * bottom halves on this lock, but a user may be in the lock too,
	 * so check if it is busy.
	 */
	FUNC6(sk);

	if (sk != rcvr->sk) {
		/* Our cached sk is different from the rcvr->sk.  This is
		 * because migrate()/accept() may have moved the association
		 * to a new socket and released all the sockets.  So now we
		 * are holding a lock on the old socket while the user may
		 * be doing something with the new socket.  Switch our veiw
		 * of the current sk.
		 */
		FUNC7(sk);
		sk = rcvr->sk;
		FUNC6(sk);
	}

	if (FUNC34(sk) || !FUNC23(sk)) {
		if (FUNC14(sk, skb)) {
			FUNC7(sk);
			FUNC15(chunk);
			skb = NULL; /* sctp_chunk_free already freed the skb */
			goto discard_release;
		}
		FUNC1(net, SCTP_MIB_IN_PKT_BACKLOG);
	} else {
		FUNC1(net, SCTP_MIB_IN_PKT_SOFTIRQ);
		FUNC22(&chunk->rcvr->inqueue, chunk);
	}

	FUNC7(sk);

	/* Release the asoc/ep ref we took in the lookup calls. */
	if (transport)
		FUNC27(transport);
	else
		FUNC18(ep);

	return 0;

discard_it:
	FUNC1(net, SCTP_MIB_IN_PKT_DISCARDS);
	FUNC11(skb);
	return 0;

discard_release:
	/* Release the asoc/ep ref we took in the lookup calls. */
	if (transport)
		FUNC27(transport);
	else
		FUNC18(ep);

	goto discard_it;
}