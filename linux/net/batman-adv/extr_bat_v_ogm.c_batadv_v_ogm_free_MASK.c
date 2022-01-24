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
struct TYPE_2__ {int /*<<< orphan*/  ogm_buff_mutex; scalar_t__ ogm_buff_len; int /*<<< orphan*/ * ogm_buff; int /*<<< orphan*/  ogm_wq; } ;
struct batadv_priv {TYPE_1__ bat_v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct batadv_priv *bat_priv)
{
	FUNC0(&bat_priv->bat_v.ogm_wq);

	FUNC2(&bat_priv->bat_v.ogm_buff_mutex);

	FUNC1(bat_priv->bat_v.ogm_buff);
	bat_priv->bat_v.ogm_buff = NULL;
	bat_priv->bat_v.ogm_buff_len = 0;

	FUNC3(&bat_priv->bat_v.ogm_buff_mutex);
}