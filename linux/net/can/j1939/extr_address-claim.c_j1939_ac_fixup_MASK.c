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
typedef  void* u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ pgn; scalar_t__ sa; void* da; scalar_t__ dst_name; scalar_t__ src_name; } ;
struct j1939_sk_buff_cb {TYPE_1__ addr; } ;
struct j1939_priv {int /*<<< orphan*/  ndev; } ;
struct j1939_ecu {scalar_t__ addr; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int ENODEV ; 
 scalar_t__ J1939_PGN_ADDRESS_CLAIMED ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct j1939_priv*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 struct j1939_ecu* FUNC3 (struct j1939_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct j1939_ecu*) ; 
 int /*<<< orphan*/  FUNC5 (struct j1939_ecu*) ; 
 void* FUNC6 (struct j1939_priv*,scalar_t__) ; 
 struct j1939_sk_buff_cb* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

int FUNC9(struct j1939_priv *priv, struct sk_buff *skb)
{
	struct j1939_sk_buff_cb *skcb = FUNC7(skb);
	int ret;
	u8 addr;

	/* network mgmt: address claiming msgs */
	if (skcb->addr.pgn == J1939_PGN_ADDRESS_CLAIMED) {
		struct j1939_ecu *ecu;

		ret = FUNC1(priv, skb);
		/* return both when failure & when successful */
		if (ret < 0)
			return ret;
		ecu = FUNC3(priv, skcb->addr.src_name);
		if (!ecu)
			return -ENODEV;

		if (ecu->addr != skcb->addr.sa)
			/* hold further traffic for ecu, remove from parent */
			FUNC5(ecu);
		FUNC4(ecu);
	} else if (skcb->addr.src_name) {
		/* assign source address */
		addr = FUNC6(priv, skcb->addr.src_name);
		if (!FUNC2(addr) &&
		    !FUNC0(skb)) {
			FUNC8(priv->ndev, "tx drop: invalid sa for name 0x%016llx\n",
				      skcb->addr.src_name);
			return -EADDRNOTAVAIL;
		}
		skcb->addr.sa = addr;
	}

	/* assign destination address */
	if (skcb->addr.dst_name) {
		addr = FUNC6(priv, skcb->addr.dst_name);
		if (!FUNC2(addr)) {
			FUNC8(priv->ndev, "tx drop: invalid da for name 0x%016llx\n",
				      skcb->addr.dst_name);
			return -EADDRNOTAVAIL;
		}
		skcb->addr.da = addr;
	}
	return 0;
}