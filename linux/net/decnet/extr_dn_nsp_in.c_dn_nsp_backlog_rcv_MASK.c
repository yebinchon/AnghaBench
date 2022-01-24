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
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_state; } ;
struct sk_buff {int dummy; } ;
struct dn_skb_cb {int rt_flags; int nsp_flags; } ;
struct dn_scp {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ DN_CC ; 
 int DN_RT_F_RTS ; 
 scalar_t__ DN_RUN ; 
 struct dn_scp* FUNC0 (struct sock*) ; 
 struct dn_skb_cb* FUNC1 (struct sk_buff*) ; 
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  TCP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 

int FUNC15(struct sock *sk, struct sk_buff *skb)
{
	struct dn_scp *scp = FUNC0(sk);
	struct dn_skb_cb *cb = FUNC1(skb);

	if (cb->rt_flags & DN_RT_F_RTS) {
		if (cb->nsp_flags == 0x18 || cb->nsp_flags == 0x68)
			FUNC11(sk, skb);
		else
			FUNC12(skb);
		return NET_RX_SUCCESS;
	}

	/*
	 * Control packet.
	 */
	if ((cb->nsp_flags & 0x0c) == 0x08) {
		switch (cb->nsp_flags & 0x70) {
		case 0x10:
		case 0x60:
			FUNC4(sk, skb);
			break;
		case 0x20:
			FUNC3(sk, skb);
			break;
		case 0x30:
			FUNC7(sk, skb);
			break;
		case 0x40:
			FUNC6(sk, skb);
			break;
		}

	} else if (cb->nsp_flags == 0x24) {
		/*
		 * Special for connacks, 'cos they don't have
		 * ack data or ack otherdata info.
		 */
		FUNC2(sk, skb);
	} else {
		int other = 1;

		/* both data and ack frames can kick a CC socket into RUN */
		if ((scp->state == DN_CC) && !FUNC13(sk, SOCK_DEAD)) {
			scp->state = DN_RUN;
			sk->sk_state = TCP_ESTABLISHED;
			sk->sk_state_change(sk);
		}

		if ((cb->nsp_flags & 0x1c) == 0)
			other = 0;
		if (cb->nsp_flags == 0x04)
			other = 0;

		/*
		 * Read out ack data here, this applies equally
		 * to data, other data, link serivce and both
		 * ack data and ack otherdata.
		 */
		FUNC10(sk, skb, other);

		/*
		 * If we've some sort of data here then call a
		 * suitable routine for dealing with it, otherwise
		 * the packet is an ack and can be discarded.
		 */
		if ((cb->nsp_flags & 0x0c) == 0) {

			if (scp->state != DN_RUN)
				goto free_out;

			switch (cb->nsp_flags) {
			case 0x10: /* LS */
				FUNC8(sk, skb);
				break;
			case 0x30: /* OD */
				FUNC9(sk, skb);
				break;
			default:
				FUNC5(sk, skb);
			}

		} else { /* Ack, chuck it out here */
free_out:
			FUNC12(skb);
		}
	}

	return NET_RX_SUCCESS;
}