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
struct j1939_priv {int /*<<< orphan*/  lock; } ;
struct j1939_ecu {int /*<<< orphan*/  addr; struct j1939_priv* priv; } ;

/* Variables and functions */
 struct j1939_ecu* FUNC0 (struct j1939_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct j1939_ecu *ecu)
{
	struct j1939_priv *priv = ecu->priv;

	FUNC1(&priv->lock);

	return FUNC0(priv, ecu->addr) == ecu;
}