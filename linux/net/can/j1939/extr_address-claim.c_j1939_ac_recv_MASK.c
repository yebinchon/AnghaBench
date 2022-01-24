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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ pgn; int /*<<< orphan*/  dst_name; int /*<<< orphan*/  da; int /*<<< orphan*/  src_name; int /*<<< orphan*/  sa; } ;
struct j1939_sk_buff_cb {TYPE_1__ addr; } ;
struct j1939_priv {int dummy; } ;
struct j1939_ecu {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ J1939_PGN_ADDRESS_CLAIMED ; 
 int /*<<< orphan*/  FUNC0 (struct j1939_priv*,struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct j1939_ecu* FUNC2 (struct j1939_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct j1939_ecu*) ; 
 struct j1939_sk_buff_cb* FUNC4 (struct sk_buff*) ; 

void FUNC5(struct j1939_priv *priv, struct sk_buff *skb)
{
	struct j1939_sk_buff_cb *skcb = FUNC4(skb);
	struct j1939_ecu *ecu;

	/* network mgmt */
	if (skcb->addr.pgn == J1939_PGN_ADDRESS_CLAIMED) {
		FUNC0(priv, skb);
	} else if (FUNC1(skcb->addr.sa)) {
		/* assign source name */
		ecu = FUNC2(priv, skcb->addr.sa);
		if (ecu) {
			skcb->addr.src_name = ecu->name;
			FUNC3(ecu);
		}
	}

	/* assign destination name */
	ecu = FUNC2(priv, skcb->addr.da);
	if (ecu) {
		skcb->addr.dst_name = ecu->name;
		FUNC3(ecu);
	}
}