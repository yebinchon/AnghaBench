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
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;} ;
struct sk_buff {int dummy; } ;
struct dn_scp {unsigned short ackrcv_dat; unsigned short ackrcv_oth; int /*<<< orphan*/  other_xmit_queue; int /*<<< orphan*/  data_xmit_queue; } ;

/* Variables and functions */
 struct dn_scp* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,unsigned short) ; 
 int FUNC2 (struct sock*,struct sk_buff*,int /*<<< orphan*/ *,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk, struct sk_buff *skb, unsigned short ack)
{
	struct dn_scp *scp = FUNC0(sk);
	unsigned short type = ((ack >> 12) & 0x0003);
	int wakeup = 0;

	switch (type) {
	case 0: /* ACK - Data */
		if (FUNC1(ack, scp->ackrcv_dat)) {
			scp->ackrcv_dat = ack & 0x0fff;
			wakeup |= FUNC2(sk, skb,
							  &scp->data_xmit_queue,
							  ack);
		}
		break;
	case 1: /* NAK - Data */
		break;
	case 2: /* ACK - OtherData */
		if (FUNC1(ack, scp->ackrcv_oth)) {
			scp->ackrcv_oth = ack & 0x0fff;
			wakeup |= FUNC2(sk, skb,
							  &scp->other_xmit_queue,
							  ack);
		}
		break;
	case 3: /* NAK - OtherData */
		break;
	}

	if (wakeup && !FUNC3(sk, SOCK_DEAD))
		sk->sk_state_change(sk);
}