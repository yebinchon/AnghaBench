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
struct sock {int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct dn_skb_cb {unsigned short segnum; } ;
struct dn_scp {scalar_t__ flowloc_sw; int /*<<< orphan*/  numdat_rcv; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 scalar_t__ DN_DONTSEND ; 
 scalar_t__ DN_SEND ; 
 struct dn_scp* FUNC0 (struct sock*) ; 
 struct dn_skb_cb* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  SIGIO ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 unsigned short FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC11(struct sock *sk, struct sk_buff *skb)
{
	int queued = 0;
	unsigned short segnum;
	struct dn_skb_cb *cb = FUNC1(skb);
	struct dn_scp *scp = FUNC0(sk);

	if (skb->len < 2)
		goto out;

	cb->segnum = segnum = FUNC7(*(__le16 *)skb->data);
	FUNC10(skb, 2);

	if (FUNC9(scp->numdat_rcv, segnum)) {
		if (FUNC5(sk, skb, SIGIO, &sk->sk_receive_queue) == 0) {
			FUNC8(&scp->numdat_rcv, 1);
			queued = 1;
		}

		if ((scp->flowloc_sw == DN_SEND) && FUNC2(sk)) {
			scp->flowloc_sw = DN_DONTSEND;
			FUNC4(sk, DN_DONTSEND, 0);
		}
	}

	FUNC3(sk);
out:
	if (!queued)
		FUNC6(skb);
}