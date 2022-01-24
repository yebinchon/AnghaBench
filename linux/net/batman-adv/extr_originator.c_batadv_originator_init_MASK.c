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
struct batadv_priv {int /*<<< orphan*/  orig_work; scalar_t__ orig_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_ORIG_WORK_PERIOD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  batadv_event_workqueue ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  batadv_orig_hash_lock_class_key ; 
 int /*<<< orphan*/  batadv_purge_orig ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(struct batadv_priv *bat_priv)
{
	if (bat_priv->orig_hash)
		return 0;

	bat_priv->orig_hash = FUNC1(1024);

	if (!bat_priv->orig_hash)
		goto err;

	FUNC2(bat_priv->orig_hash,
				   &batadv_orig_hash_lock_class_key);

	FUNC0(&bat_priv->orig_work, batadv_purge_orig);
	FUNC4(batadv_event_workqueue,
			   &bat_priv->orig_work,
			   FUNC3(BATADV_ORIG_WORK_PERIOD));

	return 0;

err:
	return -ENOMEM;
}