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
struct batadv_ogm_packet {int /*<<< orphan*/  prev_sender; int /*<<< orphan*/  orig; } ;
struct TYPE_3__ {int /*<<< orphan*/  ogm_buff_mutex; void* ogm_buff; } ;
struct batadv_hard_iface {TYPE_1__ bat_iv; TYPE_2__* net_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct batadv_hard_iface *hard_iface)
{
	struct batadv_ogm_packet *batadv_ogm_packet;
	void *ogm_buff;

	FUNC1(&hard_iface->bat_iv.ogm_buff_mutex);

	ogm_buff = hard_iface->bat_iv.ogm_buff;
	if (!ogm_buff)
		goto unlock;

	batadv_ogm_packet = ogm_buff;
	FUNC0(batadv_ogm_packet->orig,
			hard_iface->net_dev->dev_addr);
	FUNC0(batadv_ogm_packet->prev_sender,
			hard_iface->net_dev->dev_addr);

unlock:
	FUNC2(&hard_iface->bat_iv.ogm_buff_mutex);
}