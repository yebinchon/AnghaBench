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
typedef  size_t u8 ;
struct j1939_priv {int /*<<< orphan*/  lock; TYPE_1__* ents; } ;
struct j1939_ecu {size_t addr; int /*<<< orphan*/  nusers; } ;
typedef  int /*<<< orphan*/  name_t ;
struct TYPE_2__ {int /*<<< orphan*/  nusers; } ;

/* Variables and functions */
 int FUNC0 (struct j1939_ecu*) ; 
 scalar_t__ FUNC1 (size_t) ; 
 struct j1939_ecu* FUNC2 (struct j1939_priv*,int /*<<< orphan*/ ) ; 
 struct j1939_ecu* FUNC3 (struct j1939_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct j1939_ecu*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct j1939_priv *priv, name_t name, u8 sa)
{
	struct j1939_ecu *ecu;
	int err = 0;

	FUNC5(&priv->lock);

	if (FUNC1(sa))
		priv->ents[sa].nusers++;

	if (!name)
		goto done;

	ecu = FUNC3(priv, name);
	if (!ecu)
		ecu = FUNC2(priv, name);
	err = FUNC0(ecu);
	if (err)
		goto done;

	ecu->nusers++;
	/* TODO: do we care if ecu->addr != sa? */
	if (FUNC4(ecu))
		/* ecu's sa is active already */
		priv->ents[ecu->addr].nusers++;

 done:
	FUNC6(&priv->lock);

	return err;
}