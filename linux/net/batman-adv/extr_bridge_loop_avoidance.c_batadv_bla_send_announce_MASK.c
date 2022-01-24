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
struct batadv_priv {int dummy; } ;
struct batadv_bla_backbone_gw {int /*<<< orphan*/  vid; int /*<<< orphan*/  crc_lock; int /*<<< orphan*/  crc; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_CLAIM_TYPE_ANNOUNCE ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/ * batadv_announce_mac ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct batadv_priv *bat_priv,
				     struct batadv_bla_backbone_gw *backbone_gw)
{
	u8 mac[ETH_ALEN];
	__be16 crc;

	FUNC2(mac, batadv_announce_mac, 4);
	FUNC3(&backbone_gw->crc_lock);
	crc = FUNC1(backbone_gw->crc);
	FUNC4(&backbone_gw->crc_lock);
	FUNC2(&mac[4], &crc, 2);

	FUNC0(bat_priv, mac, backbone_gw->vid,
			      BATADV_CLAIM_TYPE_ANNOUNCE);
}