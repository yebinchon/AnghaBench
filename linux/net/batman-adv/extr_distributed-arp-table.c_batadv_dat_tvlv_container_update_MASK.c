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
struct batadv_priv {int /*<<< orphan*/  distributed_arp_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_TVLV_DAT ; 
 char FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_priv*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct batadv_priv *bat_priv)
{
	char dat_mode;

	dat_mode = FUNC0(&bat_priv->distributed_arp_table);

	switch (dat_mode) {
	case 0:
		FUNC2(bat_priv, BATADV_TVLV_DAT, 1);
		break;
	case 1:
		FUNC1(bat_priv, BATADV_TVLV_DAT, 1,
					       NULL, 0);
		break;
	}
}