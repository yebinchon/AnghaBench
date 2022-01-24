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
typedef  scalar_t__ u8 ;
struct sockaddr_pn {int dummy; } ;
struct sock {int sk_state; int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {scalar_t__ pipe_handle; int message_id; } ;
struct pep_sock {int /*<<< orphan*/  hlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NET_RX_SUCCESS ; 
#define  PNS_PEP_CONNECT_REQ 133 
#define  PNS_PEP_CTRL_REQ 132 
#define  PNS_PEP_DISABLE_REQ 131 
#define  PNS_PEP_DISCONNECT_REQ 130 
#define  PNS_PEP_ENABLE_REQ 129 
#define  PNS_PEP_RESET_REQ 128 
 int /*<<< orphan*/  PN_PIPE_ERR_PEP_IN_USE ; 
 scalar_t__ PN_PIPE_INVALID_HANDLE ; 
 int /*<<< orphan*/  PN_PIPE_NO_ERROR ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int TCPF_CLOSE ; 
 int TCPF_CLOSE_WAIT ; 
 int TCPF_LISTEN ; 
 int TCP_LISTEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sk_buff*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct sock* FUNC2 (int /*<<< orphan*/ *,struct sockaddr_pn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pep_sock* FUNC5 (struct sock*) ; 
 int FUNC6 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct sockaddr_pn*) ; 
 struct pnpipehdr* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int FUNC12 (struct sock*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 

__attribute__((used)) static int FUNC16(struct sock *sk, struct sk_buff *skb)
{
	struct pep_sock *pn = FUNC5(sk);
	struct sock *sknode;
	struct pnpipehdr *hdr;
	struct sockaddr_pn dst;
	u8 pipe_handle;

	if (!FUNC9(skb, sizeof(*hdr)))
		goto drop;

	hdr = FUNC8(skb);
	pipe_handle = hdr->pipe_handle;
	if (pipe_handle == PN_PIPE_INVALID_HANDLE)
		goto drop;

	FUNC7(skb, &dst);

	/* Look for an existing pipe handle */
	sknode = FUNC2(&pn->hlist, &dst, pipe_handle);
	if (sknode)
		return FUNC12(sknode, skb, 1);

	switch (hdr->message_id) {
	case PNS_PEP_CONNECT_REQ:
		if (sk->sk_state != TCP_LISTEN || FUNC11(sk)) {
			FUNC3(sk, skb, PN_PIPE_ERR_PEP_IN_USE,
					GFP_ATOMIC);
			break;
		}
		FUNC13(&sk->sk_receive_queue, skb);
		FUNC10(sk);
		if (!FUNC14(sk, SOCK_DEAD))
			sk->sk_data_ready(sk);
		return NET_RX_SUCCESS;

	case PNS_PEP_DISCONNECT_REQ:
		FUNC4(sk, skb, PN_PIPE_NO_ERROR, NULL, 0, GFP_ATOMIC);
		break;

	case PNS_PEP_CTRL_REQ:
		FUNC1(sk, skb, PN_PIPE_INVALID_HANDLE, GFP_ATOMIC);
		break;

	case PNS_PEP_RESET_REQ:
	case PNS_PEP_ENABLE_REQ:
	case PNS_PEP_DISABLE_REQ:
		/* invalid handle is not even allowed here! */
		break;

	default:
		if ((1 << sk->sk_state)
				& ~(TCPF_CLOSE|TCPF_LISTEN|TCPF_CLOSE_WAIT))
			/* actively connected socket */
			return FUNC6(sk, skb);
	}
drop:
	FUNC0(skb);
	return NET_RX_SUCCESS;
}