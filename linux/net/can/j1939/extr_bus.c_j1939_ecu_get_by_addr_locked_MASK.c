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
typedef  int /*<<< orphan*/  u8 ;
struct j1939_priv {int /*<<< orphan*/  lock; } ;
struct j1939_ecu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct j1939_ecu* FUNC1 (struct j1939_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct j1939_ecu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct j1939_ecu *FUNC4(struct j1939_priv *priv, u8 addr)
{
	struct j1939_ecu *ecu;

	FUNC3(&priv->lock);

	if (!FUNC0(addr))
		return NULL;

	ecu = FUNC1(priv, addr);
	if (ecu)
		FUNC2(ecu);

	return ecu;
}