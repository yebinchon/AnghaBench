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
struct j1939_ecu {int dummy; } ;
typedef  int /*<<< orphan*/  name_t ;

/* Variables and functions */
 struct j1939_ecu* FUNC0 (struct j1939_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct j1939_ecu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct j1939_ecu *FUNC3(struct j1939_priv *priv,
					       name_t name)
{
	struct j1939_ecu *ecu;

	FUNC2(&priv->lock);

	if (!name)
		return NULL;

	ecu = FUNC0(priv, name);
	if (ecu)
		FUNC1(ecu);

	return ecu;
}