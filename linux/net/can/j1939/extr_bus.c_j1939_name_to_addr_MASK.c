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
typedef  int u8 ;
struct j1939_priv {int /*<<< orphan*/  lock; } ;
struct j1939_ecu {int addr; } ;
typedef  int /*<<< orphan*/  name_t ;

/* Variables and functions */
 int J1939_IDLE_ADDR ; 
 int J1939_NO_ADDR ; 
 struct j1939_ecu* FUNC0 (struct j1939_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct j1939_ecu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

u8 FUNC4(struct j1939_priv *priv, name_t name)
{
	struct j1939_ecu *ecu;
	int addr = J1939_IDLE_ADDR;

	if (!name)
		return J1939_NO_ADDR;

	FUNC2(&priv->lock);
	ecu = FUNC0(priv, name);
	if (ecu && FUNC1(ecu))
		/* ecu's SA is registered */
		addr = ecu->addr;

	FUNC3(&priv->lock);

	return addr;
}