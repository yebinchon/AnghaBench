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
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct batadv_priv {TYPE_1__ dat; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_TVLV_DAT ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct batadv_priv *bat_priv)
{
	FUNC1(bat_priv, BATADV_TVLV_DAT, 1);
	FUNC2(bat_priv, BATADV_TVLV_DAT, 1);

	FUNC3(&bat_priv->dat.work);

	FUNC0(bat_priv);
}