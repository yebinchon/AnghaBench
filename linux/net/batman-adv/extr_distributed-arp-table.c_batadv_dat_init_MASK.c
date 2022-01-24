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
struct TYPE_2__ {scalar_t__ hash; } ;
struct batadv_priv {TYPE_1__ dat; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_TVLV_DAT ; 
 int /*<<< orphan*/  BATADV_TVLV_HANDLER_OGM_CIFNOTFND ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_priv*) ; 
 int /*<<< orphan*/  batadv_dat_tvlv_ogm_handler_v1 ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC4(struct batadv_priv *bat_priv)
{
	if (bat_priv->dat.hash)
		return 0;

	bat_priv->dat.hash = FUNC2(1024);

	if (!bat_priv->dat.hash)
		return -ENOMEM;

	FUNC0(bat_priv);

	FUNC3(bat_priv, batadv_dat_tvlv_ogm_handler_v1,
				     NULL, BATADV_TVLV_DAT, 1,
				     BATADV_TVLV_HANDLER_OGM_CIFNOTFND);
	FUNC1(bat_priv);
	return 0;
}