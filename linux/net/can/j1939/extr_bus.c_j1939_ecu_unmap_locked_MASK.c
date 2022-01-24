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
struct j1939_priv {struct j1939_addr_ent* ents; int /*<<< orphan*/  lock; } ;
struct j1939_ecu {size_t addr; scalar_t__ nusers; struct j1939_priv* priv; } ;
struct j1939_addr_ent {int /*<<< orphan*/  nusers; int /*<<< orphan*/ * ecu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct j1939_ecu*) ; 
 int /*<<< orphan*/  FUNC2 (struct j1939_ecu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct j1939_ecu *ecu)
{
	struct j1939_priv *priv = ecu->priv;
	struct j1939_addr_ent *ent;

	FUNC3(&priv->lock);

	if (!FUNC0(ecu->addr))
		return;

	if (!FUNC1(ecu))
		return;

	ent = &priv->ents[ecu->addr];
	ent->ecu = NULL;
	ent->nusers -= ecu->nusers;
	FUNC2(ecu);
}