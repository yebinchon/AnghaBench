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
struct TYPE_2__ {scalar_t__ sa; int /*<<< orphan*/  src_name; } ;
struct j1939_sk_buff_cb {TYPE_1__ addr; } ;
struct j1939_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  ndev; } ;
struct j1939_ecu {scalar_t__ addr; scalar_t__ name; } ;
typedef  int /*<<< orphan*/  name_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct j1939_ecu*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct j1939_ecu* FUNC4 (struct j1939_priv*,int /*<<< orphan*/ ) ; 
 struct j1939_ecu* FUNC5 (struct j1939_priv*,scalar_t__) ; 
 struct j1939_ecu* FUNC6 (struct j1939_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct j1939_ecu*) ; 
 int /*<<< orphan*/  FUNC8 (struct j1939_ecu*) ; 
 int /*<<< orphan*/  FUNC9 (struct j1939_ecu*) ; 
 int /*<<< orphan*/  FUNC10 (struct j1939_ecu*) ; 
 struct j1939_sk_buff_cb* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct j1939_priv *priv, struct sk_buff *skb)
{
	struct j1939_sk_buff_cb *skcb = FUNC11(skb);
	struct j1939_ecu *ecu, *prev;
	name_t name;

	if (skb->len != 8) {
		FUNC13(priv->ndev, "rx address claim with wrong dlc %i\n",
			      skb->len);
		return;
	}

	name = FUNC12(skb);
	skcb->addr.src_name = name;
	if (!name) {
		FUNC13(priv->ndev, "rx address claim without name\n");
		return;
	}

	if (!FUNC3(skcb->addr.sa)) {
		FUNC13(priv->ndev, "rx address claim with broadcast sa\n");
		return;
	}

	FUNC14(&priv->lock);

	/* Few words on the ECU ref counting:
	 *
	 * First we get an ECU handle, either with
	 * j1939_ecu_get_by_name_locked() (increments the ref counter)
	 * or j1939_ecu_create_locked() (initializes an ECU object
	 * with a ref counter of 1).
	 *
	 * j1939_ecu_unmap_locked() will decrement the ref counter,
	 * but only if the ECU was mapped before. So "ecu" still
	 * belongs to us.
	 *
	 * j1939_ecu_timer_start() will increment the ref counter
	 * before it starts the timer, so we can put the ecu when
	 * leaving this function.
	 */
	ecu = FUNC6(priv, name);
	if (!ecu && FUNC2(skcb->addr.sa))
		ecu = FUNC4(priv, name);

	if (FUNC0(ecu))
		goto out_unlock_bh;

	/* cancel pending (previous) address claim */
	FUNC8(ecu);

	if (FUNC1(skcb->addr.sa)) {
		FUNC10(ecu);
		goto out_ecu_put;
	}

	/* save new addr */
	if (ecu->addr != skcb->addr.sa)
		FUNC10(ecu);
	ecu->addr = skcb->addr.sa;

	prev = FUNC5(priv, skcb->addr.sa);
	if (prev) {
		if (ecu->name > prev->name) {
			FUNC10(ecu);
			FUNC7(prev);
			goto out_ecu_put;
		} else {
			/* kick prev if less or equal */
			FUNC10(prev);
			FUNC7(prev);
		}
	}

	FUNC9(ecu);
 out_ecu_put:
	FUNC7(ecu);
 out_unlock_bh:
	FUNC15(&priv->lock);
}