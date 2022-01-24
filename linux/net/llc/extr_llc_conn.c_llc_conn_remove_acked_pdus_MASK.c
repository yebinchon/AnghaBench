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
typedef  void* u16 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_sock {int /*<<< orphan*/  pdu_unack_q; } ;
struct llc_pdu_sn {int dummy; } ;

/* Variables and functions */
 int LLC_2_SEQ_NBR_MODULO ; 
 scalar_t__ FUNC0 (struct llc_pdu_sn*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct llc_pdu_sn* FUNC2 (struct sk_buff*) ; 
 struct llc_sock* FUNC3 (struct sock*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct sock *sk, u8 nr, u16 *how_many_unacked)
{
	int pdu_pos, i;
	struct sk_buff *skb;
	struct llc_pdu_sn *pdu;
	int nbr_acked = 0;
	struct llc_sock *llc = FUNC3(sk);
	int q_len = FUNC6(&llc->pdu_unack_q);

	if (!q_len)
		goto out;
	skb = FUNC5(&llc->pdu_unack_q);
	pdu = FUNC2(skb);

	/* finding position of last acked pdu in queue */
	pdu_pos = ((int)LLC_2_SEQ_NBR_MODULO + (int)nr -
			(int)FUNC0(pdu)) % LLC_2_SEQ_NBR_MODULO;

	for (i = 0; i < pdu_pos && i < q_len; i++) {
		skb = FUNC4(&llc->pdu_unack_q);
		FUNC1(skb);
		nbr_acked++;
	}
out:
	*how_many_unacked = FUNC6(&llc->pdu_unack_q);
	return nbr_acked;
}