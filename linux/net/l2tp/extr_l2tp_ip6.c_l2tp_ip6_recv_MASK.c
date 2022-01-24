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
typedef  scalar_t__ u32 ;
struct sock {int dummy; } ;
struct sk_buff {unsigned char* data; int /*<<< orphan*/  len; int /*<<< orphan*/  dev; } ;
struct net {int dummy; } ;
struct l2tp_tunnel {int debug; int /*<<< orphan*/  name; } ;
struct l2tp_session {struct l2tp_tunnel* tunnel; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int L2TP_MSG_DATA ; 
 int /*<<< orphan*/  XFRM_POLICY_IN ; 
 struct sock* FUNC0 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 struct net* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct ipv6hdr* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  l2tp_ip6_lock ; 
 int /*<<< orphan*/  FUNC6 (struct l2tp_session*,struct sk_buff*,unsigned char*,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct l2tp_session*) ; 
 struct l2tp_session* FUNC8 (struct net*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct l2tp_session*,struct sk_buff*,unsigned char**,unsigned char**) ; 
 int FUNC10 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (struct sock*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC22(struct sk_buff *skb)
{
	struct net *net = FUNC2(skb->dev);
	struct sock *sk;
	u32 session_id;
	u32 tunnel_id;
	unsigned char *ptr, *optr;
	struct l2tp_session *session;
	struct l2tp_tunnel *tunnel = NULL;
	struct ipv6hdr *iph;
	int length;

	if (!FUNC15(skb, 4))
		goto discard;

	/* Point to L2TP header */
	optr = ptr = skb->data;
	session_id = FUNC12(*((__be32 *) ptr));
	ptr += 4;

	/* RFC3931: L2TP/IP packets have the first 4 bytes containing
	 * the session_id. If it is 0, the packet is a L2TP control
	 * frame and the session_id value can be discarded.
	 */
	if (session_id == 0) {
		FUNC1(skb, 4);
		goto pass_up;
	}

	/* Ok, this is a data packet. Lookup the session. */
	session = FUNC8(net, session_id);
	if (!session)
		goto discard;

	tunnel = session->tunnel;
	if (!tunnel)
		goto discard_sess;

	/* Trace packet contents, if enabled */
	if (tunnel->debug & L2TP_MSG_DATA) {
		length = FUNC10(32u, skb->len);
		if (!FUNC15(skb, length))
			goto discard_sess;

		/* Point to L2TP header */
		optr = ptr = skb->data;
		ptr += 4;
		FUNC13("%s: ip recv\n", tunnel->name);
		FUNC14("", DUMP_PREFIX_OFFSET, ptr, length);
	}

	if (FUNC9(session, skb, &ptr, &optr))
		goto discard_sess;

	FUNC6(session, skb, ptr, optr, 0, skb->len);
	FUNC7(session);

	return 0;

pass_up:
	/* Get the tunnel_id from the L2TP header */
	if (!FUNC15(skb, 12))
		goto discard;

	if ((skb->data[0] & 0xc0) != 0xc0)
		goto discard;

	tunnel_id = FUNC12(*(__be32 *) &skb->data[4]);
	iph = FUNC4(skb);

	FUNC16(&l2tp_ip6_lock);
	sk = FUNC0(net, &iph->daddr, &iph->saddr,
				    FUNC3(skb), tunnel_id);
	if (!sk) {
		FUNC17(&l2tp_ip6_lock);
		goto discard;
	}
	FUNC19(sk);
	FUNC17(&l2tp_ip6_lock);

	if (!FUNC21(sk, XFRM_POLICY_IN, skb))
		goto discard_put;

	FUNC11(skb);

	return FUNC18(sk, skb, 1);

discard_sess:
	FUNC7(session);
	goto discard;

discard_put:
	FUNC20(sk);

discard:
	FUNC5(skb);
	return 0;
}