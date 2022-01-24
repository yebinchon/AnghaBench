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
struct sk_buff_head {int dummy; } ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;int /*<<< orphan*/  (* sk_write_space ) (struct sock*) ;struct sk_buff_head sk_receive_queue; int /*<<< orphan*/  sk_drops; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;} ;
struct sk_buff {int /*<<< orphan*/ * dev; } ;
struct pnpipehdr {int message_id; int /*<<< orphan*/  state_after_reset; } ;
struct pep_sock {int init_enable; int /*<<< orphan*/  rx_credits; int /*<<< orphan*/  tx_credits; int /*<<< orphan*/  tx_fc; int /*<<< orphan*/  rx_fc; struct sk_buff_head ctrlreq_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  PNPIPE_CTRLREQ_MAX ; 
#define  PNS_PEP_CONNECT_REQ 143 
#define  PNS_PEP_CTRL_REQ 142 
#define  PNS_PEP_DISABLE_REQ 141 
#define  PNS_PEP_DISCONNECT_REQ 140 
#define  PNS_PEP_ENABLE_REQ 139 
#define  PNS_PEP_RESET_REQ 138 
#define  PNS_PEP_STATUS_IND 137 
#define  PNS_PIPE_ALIGNED_DATA 136 
#define  PNS_PIPE_CREATED_IND 135 
#define  PNS_PIPE_DATA 134 
#define  PNS_PIPE_DISABLED_IND 133 
#define  PNS_PIPE_ENABLED_IND 132 
#define  PNS_PIPE_REDIRECTED_IND 131 
#define  PNS_PIPE_RESET_IND 130 
#define  PN_PIPE_DISABLE 129 
#define  PN_PIPE_ENABLE 128 
 int /*<<< orphan*/  PN_PIPE_ERR_PEP_IN_USE ; 
 int /*<<< orphan*/  PN_PIPE_NO_ERROR ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 scalar_t__ TCP_CLOSE_WAIT ; 
 scalar_t__ TCP_ESTABLISHED ; 
 scalar_t__ TCP_SYN_RECV ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pep_sock* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct pnpipehdr* FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*) ; 

__attribute__((used)) static int FUNC22(struct sock *sk, struct sk_buff *skb)
{
	struct pep_sock *pn = FUNC8(sk);
	struct pnpipehdr *hdr = FUNC13(skb);
	struct sk_buff_head *queue;
	int err = 0;

	FUNC0(sk->sk_state == TCP_CLOSE_WAIT);

	switch (hdr->message_id) {
	case PNS_PEP_CONNECT_REQ:
		FUNC6(sk, skb, PN_PIPE_ERR_PEP_IN_USE, GFP_ATOMIC);
		break;

	case PNS_PEP_DISCONNECT_REQ:
		FUNC7(sk, skb, PN_PIPE_NO_ERROR, NULL, 0, GFP_ATOMIC);
		sk->sk_state = TCP_CLOSE_WAIT;
		if (!FUNC17(sk, SOCK_DEAD))
			sk->sk_state_change(sk);
		break;

	case PNS_PEP_ENABLE_REQ:
		/* Wait for PNS_PIPE_(ENABLED|REDIRECTED)_IND */
		FUNC7(sk, skb, PN_PIPE_NO_ERROR, NULL, 0, GFP_ATOMIC);
		break;

	case PNS_PEP_RESET_REQ:
		switch (hdr->state_after_reset) {
		case PN_PIPE_DISABLE:
			pn->init_enable = 0;
			break;
		case PN_PIPE_ENABLE:
			pn->init_enable = 1;
			break;
		default: /* not allowed to send an error here!? */
			err = -EINVAL;
			goto out;
		}
		/* fall through */
	case PNS_PEP_DISABLE_REQ:
		FUNC3(&pn->tx_credits, 0);
		FUNC7(sk, skb, PN_PIPE_NO_ERROR, NULL, 0, GFP_ATOMIC);
		break;

	case PNS_PEP_CTRL_REQ:
		if (FUNC14(&pn->ctrlreq_queue) >= PNPIPE_CTRLREQ_MAX) {
			FUNC2(&sk->sk_drops);
			break;
		}
		FUNC1(skb, 4);
		queue = &pn->ctrlreq_queue;
		goto queue;

	case PNS_PIPE_ALIGNED_DATA:
		FUNC1(skb, 1);
		/* fall through */
	case PNS_PIPE_DATA:
		FUNC1(skb, 3); /* Pipe data header */
		if (!FUNC12(pn->rx_fc)) {
			err = FUNC18(sk, skb);
			if (!err)
				return NET_RX_SUCCESS;
			err = -ENOBUFS;
			break;
		}

		if (pn->rx_credits == 0) {
			FUNC2(&sk->sk_drops);
			err = -ENOBUFS;
			break;
		}
		pn->rx_credits--;
		queue = &sk->sk_receive_queue;
		goto queue;

	case PNS_PEP_STATUS_IND:
		FUNC11(sk, skb);
		break;

	case PNS_PIPE_REDIRECTED_IND:
		err = FUNC10(sk, skb);
		break;

	case PNS_PIPE_CREATED_IND:
		err = FUNC10(sk, skb);
		if (err)
			break;
		/* fall through */
	case PNS_PIPE_RESET_IND:
		if (!pn->init_enable)
			break;
		/* fall through */
	case PNS_PIPE_ENABLED_IND:
		if (!FUNC12(pn->tx_fc)) {
			FUNC3(&pn->tx_credits, 1);
			sk->sk_write_space(sk);
		}
		if (sk->sk_state == TCP_ESTABLISHED)
			break; /* Nothing to do */
		sk->sk_state = TCP_ESTABLISHED;
		FUNC9(sk, GFP_ATOMIC);
		break;

	case PNS_PIPE_DISABLED_IND:
		sk->sk_state = TCP_SYN_RECV;
		pn->rx_credits = 0;
		break;

	default:
		FUNC5("Phonet unknown PEP message: %u\n",
				    hdr->message_id);
		err = -EINVAL;
	}
out:
	FUNC4(skb);
	return (err == -ENOBUFS) ? NET_RX_DROP : NET_RX_SUCCESS;

queue:
	skb->dev = NULL;
	FUNC16(skb, sk);
	FUNC15(queue, skb);
	if (!FUNC17(sk, SOCK_DEAD))
		sk->sk_data_ready(sk);
	return NET_RX_SUCCESS;
}