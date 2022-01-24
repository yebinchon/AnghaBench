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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct l2tp_tunnel {int /*<<< orphan*/  peer_tunnel_id; int /*<<< orphan*/  tunnel_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_oos_packets; int /*<<< orphan*/  rx_seq_discards; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct l2tp_session {int recv_seq; int send_seq; int lns_mode; TYPE_1__ stats; scalar_t__ reorder_timeout; int /*<<< orphan*/ * peer_cookie; scalar_t__ peer_cookie_len; int /*<<< orphan*/ * cookie; scalar_t__ cookie_len; scalar_t__* ifname; int /*<<< orphan*/  pwtype; int /*<<< orphan*/  debug; int /*<<< orphan*/  peer_session_id; int /*<<< orphan*/  session_id; struct l2tp_tunnel* tunnel; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  L2TP_ATTR_CONN_ID ; 
 int /*<<< orphan*/  L2TP_ATTR_COOKIE ; 
 int /*<<< orphan*/  L2TP_ATTR_DEBUG ; 
 int /*<<< orphan*/  L2TP_ATTR_IFNAME ; 
 int /*<<< orphan*/  L2TP_ATTR_LNS_MODE ; 
 int /*<<< orphan*/  L2TP_ATTR_PAD ; 
 int /*<<< orphan*/  L2TP_ATTR_PEER_CONN_ID ; 
 int /*<<< orphan*/  L2TP_ATTR_PEER_COOKIE ; 
 int /*<<< orphan*/  L2TP_ATTR_PEER_SESSION_ID ; 
 int /*<<< orphan*/  L2TP_ATTR_PW_TYPE ; 
 int /*<<< orphan*/  L2TP_ATTR_RECV_SEQ ; 
 int /*<<< orphan*/  L2TP_ATTR_RECV_TIMEOUT ; 
 int /*<<< orphan*/  L2TP_ATTR_RX_BYTES ; 
 int /*<<< orphan*/  L2TP_ATTR_RX_ERRORS ; 
 int /*<<< orphan*/  L2TP_ATTR_RX_OOS_PACKETS ; 
 int /*<<< orphan*/  L2TP_ATTR_RX_PACKETS ; 
 int /*<<< orphan*/  L2TP_ATTR_RX_SEQ_DISCARDS ; 
 int /*<<< orphan*/  L2TP_ATTR_SEND_SEQ ; 
 int /*<<< orphan*/  L2TP_ATTR_SESSION_ID ; 
 int /*<<< orphan*/  L2TP_ATTR_STATS ; 
 int /*<<< orphan*/  L2TP_ATTR_STATS_PAD ; 
 int /*<<< orphan*/  L2TP_ATTR_TX_BYTES ; 
 int /*<<< orphan*/  L2TP_ATTR_TX_ERRORS ; 
 int /*<<< orphan*/  L2TP_ATTR_TX_PACKETS ; 
 int /*<<< orphan*/  L2TP_ATTR_USING_IPSEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l2tp_nl_family ; 
 scalar_t__ FUNC4 (struct l2tp_tunnel*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *skb, u32 portid, u32 seq, int flags,
				struct l2tp_session *session, u8 cmd)
{
	void *hdr;
	struct nlattr *nest;
	struct l2tp_tunnel *tunnel = session->tunnel;

	hdr = FUNC3(skb, portid, seq, &l2tp_nl_family, flags, cmd);
	if (!hdr)
		return -EMSGSIZE;

	if (FUNC11(skb, L2TP_ATTR_CONN_ID, tunnel->tunnel_id) ||
	    FUNC11(skb, L2TP_ATTR_SESSION_ID, session->session_id) ||
	    FUNC11(skb, L2TP_ATTR_PEER_CONN_ID, tunnel->peer_tunnel_id) ||
	    FUNC11(skb, L2TP_ATTR_PEER_SESSION_ID,
			session->peer_session_id) ||
	    FUNC11(skb, L2TP_ATTR_DEBUG, session->debug) ||
	    FUNC10(skb, L2TP_ATTR_PW_TYPE, session->pwtype))
		goto nla_put_failure;

	if ((session->ifname[0] &&
	     FUNC9(skb, L2TP_ATTR_IFNAME, session->ifname)) ||
	    (session->cookie_len &&
	     FUNC7(skb, L2TP_ATTR_COOKIE, session->cookie_len,
		     &session->cookie[0])) ||
	    (session->peer_cookie_len &&
	     FUNC7(skb, L2TP_ATTR_PEER_COOKIE, session->peer_cookie_len,
		     &session->peer_cookie[0])) ||
	    FUNC13(skb, L2TP_ATTR_RECV_SEQ, session->recv_seq) ||
	    FUNC13(skb, L2TP_ATTR_SEND_SEQ, session->send_seq) ||
	    FUNC13(skb, L2TP_ATTR_LNS_MODE, session->lns_mode) ||
	    (FUNC4(tunnel) &&
	     FUNC13(skb, L2TP_ATTR_USING_IPSEC, 1)) ||
	    (session->reorder_timeout &&
	     FUNC8(skb, L2TP_ATTR_RECV_TIMEOUT,
			   session->reorder_timeout, L2TP_ATTR_PAD)))
		goto nla_put_failure;

	nest = FUNC6(skb, L2TP_ATTR_STATS);
	if (nest == NULL)
		goto nla_put_failure;

	if (FUNC12(skb, L2TP_ATTR_TX_PACKETS,
			      FUNC0(&session->stats.tx_packets),
			      L2TP_ATTR_STATS_PAD) ||
	    FUNC12(skb, L2TP_ATTR_TX_BYTES,
			      FUNC0(&session->stats.tx_bytes),
			      L2TP_ATTR_STATS_PAD) ||
	    FUNC12(skb, L2TP_ATTR_TX_ERRORS,
			      FUNC0(&session->stats.tx_errors),
			      L2TP_ATTR_STATS_PAD) ||
	    FUNC12(skb, L2TP_ATTR_RX_PACKETS,
			      FUNC0(&session->stats.rx_packets),
			      L2TP_ATTR_STATS_PAD) ||
	    FUNC12(skb, L2TP_ATTR_RX_BYTES,
			      FUNC0(&session->stats.rx_bytes),
			      L2TP_ATTR_STATS_PAD) ||
	    FUNC12(skb, L2TP_ATTR_RX_SEQ_DISCARDS,
			      FUNC0(&session->stats.rx_seq_discards),
			      L2TP_ATTR_STATS_PAD) ||
	    FUNC12(skb, L2TP_ATTR_RX_OOS_PACKETS,
			      FUNC0(&session->stats.rx_oos_packets),
			      L2TP_ATTR_STATS_PAD) ||
	    FUNC12(skb, L2TP_ATTR_RX_ERRORS,
			      FUNC0(&session->stats.rx_errors),
			      L2TP_ATTR_STATS_PAD))
		goto nla_put_failure;
	FUNC5(skb, nest);

	FUNC2(skb, hdr);
	return 0;

 nla_put_failure:
	FUNC1(skb, hdr);
	return -1;
}