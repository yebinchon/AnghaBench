#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ogm_buff_mutex; scalar_t__ ogm_buff; } ;
struct batadv_priv {TYPE_2__ bat_v; } ;
struct batadv_ogm2_packet {int /*<<< orphan*/  orig; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; int /*<<< orphan*/  soft_iface; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct batadv_priv* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct batadv_hard_iface *primary_iface)
{
	struct batadv_priv *bat_priv = FUNC3(primary_iface->soft_iface);
	struct batadv_ogm2_packet *ogm_packet;

	FUNC1(&bat_priv->bat_v.ogm_buff_mutex);
	if (!bat_priv->bat_v.ogm_buff)
		goto unlock;

	ogm_packet = (struct batadv_ogm2_packet *)bat_priv->bat_v.ogm_buff;
	FUNC0(ogm_packet->orig, primary_iface->net_dev->dev_addr);

unlock:
	FUNC2(&bat_priv->bat_v.ogm_buff_mutex);
}