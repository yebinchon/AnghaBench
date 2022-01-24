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
typedef  void* u32 ;
struct batadv_tvlv_gateway_data {void* bandwidth_up; void* bandwidth_down; } ;
struct TYPE_2__ {int /*<<< orphan*/  bandwidth_up; int /*<<< orphan*/  bandwidth_down; int /*<<< orphan*/  mode; } ;
struct batadv_priv {TYPE_1__ gw; } ;
typedef  int /*<<< orphan*/  gw ;

/* Variables and functions */
#define  BATADV_GW_MODE_CLIENT 130 
#define  BATADV_GW_MODE_OFF 129 
#define  BATADV_GW_MODE_SERVER 128 
 int /*<<< orphan*/  BATADV_TVLV_GW ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_priv*,int /*<<< orphan*/ ,int,struct batadv_tvlv_gateway_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (void*) ; 

void FUNC4(struct batadv_priv *bat_priv)
{
	struct batadv_tvlv_gateway_data gw;
	u32 down, up;
	char gw_mode;

	gw_mode = FUNC0(&bat_priv->gw.mode);

	switch (gw_mode) {
	case BATADV_GW_MODE_OFF:
	case BATADV_GW_MODE_CLIENT:
		FUNC2(bat_priv, BATADV_TVLV_GW, 1);
		break;
	case BATADV_GW_MODE_SERVER:
		down = FUNC0(&bat_priv->gw.bandwidth_down);
		up = FUNC0(&bat_priv->gw.bandwidth_up);
		gw.bandwidth_down = FUNC3(down);
		gw.bandwidth_up = FUNC3(up);
		FUNC1(bat_priv, BATADV_TVLV_GW, 1,
					       &gw, sizeof(gw));
		break;
	}
}