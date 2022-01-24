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
struct j1939_priv {int /*<<< orphan*/  lock; TYPE_1__* ents; } ;
struct TYPE_2__ {scalar_t__ ecu; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct j1939_priv *priv)
{
	int i;

	FUNC2(&priv->lock);
	for (i = 0; i < FUNC0(priv->ents); i++)
		if (priv->ents[i].ecu)
			FUNC1(priv->ents[i].ecu);
	FUNC3(&priv->lock);
}