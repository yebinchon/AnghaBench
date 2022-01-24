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
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  commit_lock; } ;
struct batadv_priv {TYPE_1__ tt; int /*<<< orphan*/  packet_size_max; } ;

/* Variables and functions */
 int BATADV_TT_LOCAL_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  batadv_info ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_priv*) ; 
 int FUNC4 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 struct batadv_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct net_device *soft_iface)
{
	struct batadv_priv *bat_priv = FUNC6(soft_iface);
	int packet_size_max = FUNC0(&bat_priv->packet_size_max);
	int table_size, timeout = BATADV_TT_LOCAL_TIMEOUT / 2;
	bool reduced = false;

	FUNC7(&bat_priv->tt.commit_lock);

	while (true) {
		table_size = FUNC4(bat_priv);
		if (packet_size_max >= table_size)
			break;

		FUNC2(bat_priv, timeout);
		FUNC3(bat_priv);

		timeout /= 2;
		reduced = true;
		FUNC5(batadv_info, soft_iface,
					 "Forced to purge local tt entries to fit new maximum fragment MTU (%i)\n",
					 packet_size_max);
	}

	/* commit these changes immediately, to avoid synchronization problem
	 * with the TTVN
	 */
	if (reduced)
		FUNC1(bat_priv);

	FUNC8(&bat_priv->tt.commit_lock);
}