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
struct sock {void* sk_state; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_drops; } ;
struct sk_buff {int /*<<< orphan*/ * dev; } ;
struct pnpipehdr {int message_id; } ;
struct pep_sock {int /*<<< orphan*/  init_enable; int /*<<< orphan*/  rx_credits; int /*<<< orphan*/  rx_fc; } ;

/* Variables and functions */
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
#define  PNS_PEP_CONNECT_RESP 133 
#define  PNS_PEP_DISCONNECT_RESP 132 
#define  PNS_PEP_ENABLE_RESP 131 
#define  PNS_PEP_STATUS_IND 130 
#define  PNS_PIPE_ALIGNED_DATA 129 
#define  PNS_PIPE_DATA 128 
 int /*<<< orphan*/  PN_PIPE_DISABLE ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 void* TCP_CLOSE_WAIT ; 
 void* TCP_ESTABLISHED ; 
 void* TCP_SYN_RECV ; 
 void* TCP_SYN_SENT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_buff*) ; 
 struct pep_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct pnpipehdr* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 

__attribute__((used)) static int FUNC16(struct sock *sk, struct sk_buff *skb)
{
	struct pep_sock *pn = FUNC5(sk);
	struct pnpipehdr *hdr = FUNC9(skb);
	int err = NET_RX_SUCCESS;

	switch (hdr->message_id) {
	case PNS_PIPE_ALIGNED_DATA:
		FUNC0(skb, 1);
		/* fall through */
	case PNS_PIPE_DATA:
		FUNC0(skb, 3); /* Pipe data header */
		if (!FUNC8(pn->rx_fc)) {
			err = FUNC13(sk, skb);
			if (!err)
				return NET_RX_SUCCESS;
			err = NET_RX_DROP;
			break;
		}

		if (pn->rx_credits == 0) {
			FUNC1(&sk->sk_drops);
			err = NET_RX_DROP;
			break;
		}
		pn->rx_credits--;
		skb->dev = NULL;
		FUNC11(skb, sk);
		FUNC10(&sk->sk_receive_queue, skb);
		if (!FUNC12(sk, SOCK_DEAD))
			sk->sk_data_ready(sk);
		return NET_RX_SUCCESS;

	case PNS_PEP_CONNECT_RESP:
		if (sk->sk_state != TCP_SYN_SENT)
			break;
		if (!FUNC12(sk, SOCK_DEAD))
			sk->sk_state_change(sk);
		if (FUNC3(sk, skb)) {
			sk->sk_state = TCP_CLOSE_WAIT;
			break;
		}
		if (pn->init_enable == PN_PIPE_DISABLE)
			sk->sk_state = TCP_SYN_RECV;
		else {
			sk->sk_state = TCP_ESTABLISHED;
			FUNC7(sk);
		}
		break;

	case PNS_PEP_ENABLE_RESP:
		if (sk->sk_state != TCP_SYN_SENT)
			break;

		if (FUNC4(sk, skb)) {
			sk->sk_state = TCP_CLOSE_WAIT;
			break;
		}

		sk->sk_state = TCP_ESTABLISHED;
		FUNC7(sk);
		break;

	case PNS_PEP_DISCONNECT_RESP:
		/* sock should already be dead, nothing to do */
		break;

	case PNS_PEP_STATUS_IND:
		FUNC6(sk, skb);
		break;
	}
	FUNC2(skb);
	return err;
}