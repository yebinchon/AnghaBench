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
typedef  int u8 ;
typedef  int u16 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_sock {int /*<<< orphan*/  pdu_unack_q; TYPE_1__* dev; } ;
struct llc_pdu_sn {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int IFF_LOOPBACK ; 
 int LLC_2_SEQ_NBR_MODULO ; 
 int FUNC0 (struct llc_pdu_sn*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 struct llc_pdu_sn* FUNC2 (struct sk_buff*) ; 
 struct llc_sock* FUNC3 (struct sock*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u16 FUNC7(struct sock *sk, u8 nr)
{
	u8 nr1, nr2;
	struct sk_buff *skb;
	struct llc_pdu_sn *pdu;
	struct llc_sock *llc = FUNC3(sk);
	int rc = 0;

	if (llc->dev->flags & IFF_LOOPBACK)
		goto out;
	rc = 1;
	if (FUNC6(&llc->pdu_unack_q))
		goto out;
	skb = FUNC4(&llc->pdu_unack_q);
	pdu = FUNC2(skb);
	nr1 = FUNC0(pdu);
	skb = FUNC5(&llc->pdu_unack_q);
	pdu = FUNC2(skb);
	nr2 = FUNC0(pdu);
	rc = !FUNC1(nr1, nr, (nr2 + 1) % LLC_2_SEQ_NBR_MODULO);
out:
	return rc;
}