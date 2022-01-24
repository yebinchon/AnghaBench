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
struct batadv_ogm_packet {int /*<<< orphan*/  ttl; } ;
struct TYPE_2__ {int /*<<< orphan*/  ogm_buff_mutex; void* ogm_buff; } ;
struct batadv_hard_iface {TYPE_1__ bat_iv; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_TTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct batadv_hard_iface *hard_iface)
{
	struct batadv_ogm_packet *batadv_ogm_packet;
	void *ogm_buff;

	FUNC0(&hard_iface->bat_iv.ogm_buff_mutex);

	ogm_buff = hard_iface->bat_iv.ogm_buff;
	if (!ogm_buff)
		goto unlock;

	batadv_ogm_packet = ogm_buff;
	batadv_ogm_packet->ttl = BATADV_TTL;

unlock:
	FUNC1(&hard_iface->bat_iv.ogm_buff_mutex);
}