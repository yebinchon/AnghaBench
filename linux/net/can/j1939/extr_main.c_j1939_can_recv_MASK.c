#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ data; int /*<<< orphan*/  sk; } ;
struct TYPE_4__ {int sa; int pgn; size_t da; int /*<<< orphan*/  type; } ;
struct j1939_sk_buff_cb {int priority; int /*<<< orphan*/  flags; TYPE_2__ addr; int /*<<< orphan*/  tskey; } ;
struct j1939_priv {int /*<<< orphan*/  lock; TYPE_1__* ents; } ;
struct can_frame {int can_id; int /*<<< orphan*/  can_dlc; } ;
struct TYPE_3__ {scalar_t__ nusers; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  J1939_CAN_HDR ; 
 int /*<<< orphan*/  J1939_ECU_LOCAL_DST ; 
 int /*<<< orphan*/  J1939_ECU_LOCAL_SRC ; 
 size_t J1939_NO_ADDR ; 
 int J1939_PGN_MAX ; 
 int /*<<< orphan*/  J1939_TP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct j1939_priv*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct j1939_priv*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct j1939_priv*,struct sk_buff*) ; 
 struct j1939_sk_buff_cb* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct j1939_priv*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct j1939_sk_buff_cb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uint8_t ; 

__attribute__((used)) static void FUNC16(struct sk_buff *iskb, void *data)
{
	struct j1939_priv *priv = data;
	struct sk_buff *skb;
	struct j1939_sk_buff_cb *skcb, *iskcb;
	struct can_frame *cf;

	/* create a copy of the skb
	 * j1939 only delivers the real data bytes,
	 * the header goes into sockaddr.
	 * j1939 may not touch the incoming skb in such way
	 */
	skb = FUNC13(iskb, GFP_ATOMIC);
	if (!skb)
		return;

	FUNC0(skb, iskb->sk);

	/* get a pointer to the header of the skb
	 * the skb payload (pointer) is moved, so that the next skb_data
	 * returns the actual payload
	 */
	cf = (void *)skb->data;
	FUNC14(skb, J1939_CAN_HDR);

	/* fix length, set to dlc, with 8 maximum */
	FUNC15(skb, FUNC10(uint8_t, cf->can_dlc, 8));

	/* set addr */
	skcb = FUNC6(skb);
	FUNC9(skcb, 0, sizeof(*skcb));

	iskcb = FUNC6(iskb);
	skcb->tskey = iskcb->tskey;
	skcb->priority = (cf->can_id >> 26) & 0x7;
	skcb->addr.sa = cf->can_id;
	skcb->addr.pgn = (cf->can_id >> 8) & J1939_PGN_MAX;
	/* set default message type */
	skcb->addr.type = J1939_TP;
	if (FUNC3(skcb->addr.pgn)) {
		/* Type 1: with destination address */
		skcb->addr.da = skcb->addr.pgn;
		/* normalize pgn: strip dst address */
		skcb->addr.pgn &= 0x3ff00;
	} else {
		/* set broadcast address */
		skcb->addr.da = J1939_NO_ADDR;
	}

	/* update localflags */
	FUNC11(&priv->lock);
	if (FUNC2(skcb->addr.sa) &&
	    priv->ents[skcb->addr.sa].nusers)
		skcb->flags |= J1939_ECU_LOCAL_SRC;
	if (FUNC2(skcb->addr.da) &&
	    priv->ents[skcb->addr.da].nusers)
		skcb->flags |= J1939_ECU_LOCAL_DST;
	FUNC12(&priv->lock);

	/* deliver into the j1939 stack ... */
	FUNC1(priv, skb);

	if (FUNC7(priv, skb))
		/* this means the transport layer processed the message */
		goto done;

	FUNC4(priv, skb);
	FUNC5(priv, skb);
 done:
	FUNC8(skb);
}