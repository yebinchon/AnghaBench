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
struct j1939_priv {int /*<<< orphan*/  ecus; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  function; } ;
struct j1939_ecu {int /*<<< orphan*/  list; struct j1939_priv* priv; TYPE_1__ ac_timer; int /*<<< orphan*/  name; int /*<<< orphan*/  addr; int /*<<< orphan*/  kref; } ;
typedef  int /*<<< orphan*/  name_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct j1939_ecu* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL_SOFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  J1939_IDLE_ADDR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  j1939_ecu_timer_handler ; 
 int /*<<< orphan*/  FUNC4 (struct j1939_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct j1939_ecu* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct j1939_ecu *FUNC9(struct j1939_priv *priv, name_t name)
{
	struct j1939_ecu *ecu;

	FUNC8(&priv->lock);

	ecu = FUNC6(sizeof(*ecu), FUNC2());
	if (!ecu)
		return FUNC0(-ENOMEM);
	FUNC5(&ecu->kref);
	ecu->addr = J1939_IDLE_ADDR;
	ecu->name = name;

	FUNC3(&ecu->ac_timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL_SOFT);
	ecu->ac_timer.function = j1939_ecu_timer_handler;
	FUNC1(&ecu->list);

	FUNC4(priv);
	ecu->priv = priv;
	FUNC7(&ecu->list, &priv->ecus);

	return ecu;
}