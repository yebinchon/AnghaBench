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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct sockaddr_pn {int dummy; } ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_destruct; int /*<<< orphan*/  sk_protocol; int /*<<< orphan*/  sk_backlog_rcv; int /*<<< orphan*/  sk_prot; } ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {scalar_t__ pipe_handle; int state_after_connect; int other_pep_type; scalar_t__* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  resource; void* dobject; void* sobject; } ;
struct pep_sock {int peer_type; int /*<<< orphan*/  hlist; scalar_t__ aligned; scalar_t__ init_enable; int /*<<< orphan*/  tx_fc; int /*<<< orphan*/  rx_fc; scalar_t__ rx_credits; scalar_t__ ifindex; int /*<<< orphan*/  tx_credits; scalar_t__ pipe_handle; int /*<<< orphan*/  ctrlreq_queue; struct sock* listener; TYPE_1__ pn_sk; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int EPROTO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  PF_PHONET ; 
 int /*<<< orphan*/  PN_LEGACY_FLOW_CONTROL ; 
#define  PN_PIPE_DISABLE 131 
#define  PN_PIPE_ENABLE 130 
 int /*<<< orphan*/  PN_PIPE_ERR_INVALID_PARAM ; 
 int /*<<< orphan*/  PN_PIPE_ERR_OVERLOAD ; 
 int /*<<< orphan*/  PN_PIPE_ERR_PEP_IN_USE ; 
#define  PN_PIPE_SB_ALIGNED_DATA 129 
#define  PN_PIPE_SB_CONNECT_REQ_PEP_SUB_TYPE 128 
 scalar_t__ TCP_LISTEN ; 
 scalar_t__ TCP_SYN_RECV ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int FUNC4 (struct sock*,struct sk_buff*) ; 
 struct sock* FUNC5 (int /*<<< orphan*/ *,struct sockaddr_pn*,scalar_t__) ; 
 scalar_t__* FUNC6 (struct sk_buff*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pep_sock* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  pipe_destruct ; 
 int /*<<< orphan*/  pipe_do_rcv ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct sockaddr_pn*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct sockaddr_pn*) ; 
 void* FUNC11 (struct sockaddr_pn*) ; 
 int /*<<< orphan*/  FUNC12 (struct sockaddr_pn*) ; 
 struct pnpipehdr* FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*,int /*<<< orphan*/ *) ; 
 struct sock* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC20 (struct sock*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  FUNC23 (struct sock*) ; 
 int /*<<< orphan*/  FUNC24 (struct sock*) ; 
 scalar_t__ FUNC25 (struct sock*) ; 

__attribute__((used)) static struct sock *FUNC26(struct sock *sk, int flags, int *errp,
				    bool kern)
{
	struct pep_sock *pn = FUNC8(sk), *newpn;
	struct sock *newsk = NULL;
	struct sk_buff *skb;
	struct pnpipehdr *hdr;
	struct sockaddr_pn dst, src;
	int err;
	u16 peer_type;
	u8 pipe_handle, enabled, n_sb;
	u8 aligned = 0;

	skb = FUNC20(sk, 0, flags & O_NONBLOCK, errp);
	if (!skb)
		return NULL;

	FUNC3(sk);
	if (sk->sk_state != TCP_LISTEN) {
		err = -EINVAL;
		goto drop;
	}
	FUNC16(sk);

	err = -EPROTO;
	if (!FUNC14(skb, sizeof(*hdr) + 4))
		goto drop;

	hdr = FUNC13(skb);
	pipe_handle = hdr->pipe_handle;
	switch (hdr->state_after_connect) {
	case PN_PIPE_DISABLE:
		enabled = 0;
		break;
	case PN_PIPE_ENABLE:
		enabled = 1;
		break;
	default:
		FUNC7(sk, skb, PN_PIPE_ERR_INVALID_PARAM,
				GFP_KERNEL);
		goto drop;
	}
	peer_type = hdr->other_pep_type << 8;

	/* Parse sub-blocks (options) */
	n_sb = hdr->data[3];
	while (n_sb > 0) {
		u8 type, buf[1], len = sizeof(buf);
		const u8 *data = FUNC6(skb, &type, &len, buf);

		if (data == NULL)
			goto drop;
		switch (type) {
		case PN_PIPE_SB_CONNECT_REQ_PEP_SUB_TYPE:
			if (len < 1)
				goto drop;
			peer_type = (peer_type & 0xff00) | data[0];
			break;
		case PN_PIPE_SB_ALIGNED_DATA:
			aligned = data[0] != 0;
			break;
		}
		n_sb--;
	}

	/* Check for duplicate pipe handle */
	newsk = FUNC5(&pn->hlist, &dst, pipe_handle);
	if (FUNC25(newsk)) {
		FUNC0(newsk);
		newsk = NULL;
		FUNC7(sk, skb, PN_PIPE_ERR_PEP_IN_USE, GFP_KERNEL);
		goto drop;
	}

	/* Create a new to-be-accepted sock */
	newsk = FUNC18(FUNC23(sk), PF_PHONET, GFP_KERNEL, sk->sk_prot,
			 kern);
	if (!newsk) {
		FUNC7(sk, skb, PN_PIPE_ERR_OVERLOAD, GFP_KERNEL);
		err = -ENOBUFS;
		goto drop;
	}

	FUNC22(NULL, newsk);
	newsk->sk_state = TCP_SYN_RECV;
	newsk->sk_backlog_rcv = pipe_do_rcv;
	newsk->sk_protocol = sk->sk_protocol;
	newsk->sk_destruct = pipe_destruct;

	newpn = FUNC8(newsk);
	FUNC9(skb, &dst);
	FUNC10(skb, &src);
	newpn->pn_sk.sobject = FUNC11(&dst);
	newpn->pn_sk.dobject = FUNC11(&src);
	newpn->pn_sk.resource = FUNC12(&dst);
	FUNC21(sk);
	newpn->listener = sk;
	FUNC19(&newpn->ctrlreq_queue);
	newpn->pipe_handle = pipe_handle;
	FUNC1(&newpn->tx_credits, 0);
	newpn->ifindex = 0;
	newpn->peer_type = peer_type;
	newpn->rx_credits = 0;
	newpn->rx_fc = newpn->tx_fc = PN_LEGACY_FLOW_CONTROL;
	newpn->init_enable = enabled;
	newpn->aligned = aligned;

	err = FUNC4(newsk, skb);
	if (err) {
		FUNC24(newsk);
		newsk = NULL;
		goto drop;
	}
	FUNC17(newsk, &pn->hlist);
drop:
	FUNC15(sk);
	FUNC2(skb);
	*errp = err;
	return newsk;
}