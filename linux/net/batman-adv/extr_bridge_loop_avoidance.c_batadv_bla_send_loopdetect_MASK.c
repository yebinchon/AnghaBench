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
struct TYPE_2__ {int /*<<< orphan*/  loopdetect_addr; } ;
struct batadv_priv {TYPE_1__ bla; } ;
struct batadv_bla_backbone_gw {int /*<<< orphan*/  vid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_CLAIM_TYPE_LOOPDETECT ; 
 int /*<<< orphan*/  BATADV_DBG_BLA ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct batadv_priv*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct batadv_priv *bat_priv,
			   struct batadv_bla_backbone_gw *backbone_gw)
{
	FUNC1(BATADV_DBG_BLA, bat_priv, "Send loopdetect frame for vid %d\n",
		   backbone_gw->vid);
	FUNC0(bat_priv, bat_priv->bla.loopdetect_addr,
			      backbone_gw->vid, BATADV_CLAIM_TYPE_LOOPDETECT);
}