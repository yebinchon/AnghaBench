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
struct TYPE_2__ {int /*<<< orphan*/  last_changeset; int /*<<< orphan*/  work; } ;
struct batadv_priv {TYPE_1__ tt; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_TVLV_ROAM ; 
 int /*<<< orphan*/  BATADV_TVLV_TT ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct batadv_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct batadv_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct batadv_priv *bat_priv)
{
	FUNC6(bat_priv, BATADV_TVLV_ROAM, 1);

	FUNC5(bat_priv, BATADV_TVLV_TT, 1);
	FUNC6(bat_priv, BATADV_TVLV_TT, 1);

	FUNC7(&bat_priv->tt.work);

	FUNC2(bat_priv);
	FUNC1(bat_priv);
	FUNC3(bat_priv);
	FUNC0(bat_priv);
	FUNC4(bat_priv);

	FUNC8(bat_priv->tt.last_changeset);
}