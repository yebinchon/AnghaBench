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
struct TYPE_2__ {int /*<<< orphan*/ * hash; } ;
struct batadv_priv {TYPE_1__ dat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct batadv_priv *bat_priv)
{
	if (!bat_priv->dat.hash)
		return;

	FUNC0(bat_priv, NULL);

	FUNC1(bat_priv->dat.hash);

	bat_priv->dat.hash = NULL;
}