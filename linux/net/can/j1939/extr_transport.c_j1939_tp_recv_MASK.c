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
struct sk_buff {int len; } ;
struct TYPE_2__ {int pgn; void* type; } ;
struct j1939_sk_buff_cb {TYPE_1__ addr; } ;
struct j1939_priv {int dummy; } ;

/* Variables and functions */
 void* J1939_ETP ; 
#define  J1939_ETP_PGN_CTL 131 
#define  J1939_ETP_PGN_DAT 130 
#define  J1939_TP_PGN_CTL 129 
#define  J1939_TP_PGN_DAT 128 
 struct j1939_sk_buff_cb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct j1939_priv*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct j1939_sk_buff_cb*) ; 
 int /*<<< orphan*/  FUNC3 (struct j1939_priv*,struct sk_buff*) ; 

int FUNC4(struct j1939_priv *priv, struct sk_buff *skb)
{
	struct j1939_sk_buff_cb *skcb = FUNC0(skb);

	if (!FUNC2(skcb))
		return 0;

	switch (skcb->addr.pgn) {
	case J1939_ETP_PGN_DAT:
		skcb->addr.type = J1939_ETP;
		/* fall through */
	case J1939_TP_PGN_DAT:
		FUNC3(priv, skb);
		break;

	case J1939_ETP_PGN_CTL:
		skcb->addr.type = J1939_ETP;
		/* fall through */
	case J1939_TP_PGN_CTL:
		if (skb->len < 8)
			return 0; /* Don't care. Nothing to extract here */

		FUNC1(priv, skb);
		break;
	default:
		return 0; /* no problem */
	}
	return 1; /* "I processed the message" */
}