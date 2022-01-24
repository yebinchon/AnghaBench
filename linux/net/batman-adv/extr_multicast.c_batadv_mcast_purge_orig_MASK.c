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
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int /*<<< orphan*/  mcast_handler_lock; struct batadv_priv* bat_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_MCAST_WANT_NO_RTR4 ; 
 int /*<<< orphan*/  BATADV_MCAST_WANT_NO_RTR6 ; 
 int /*<<< orphan*/  BATADV_NO_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*,struct batadv_orig_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_priv*,struct batadv_orig_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,struct batadv_orig_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_priv*,struct batadv_orig_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_priv*,struct batadv_orig_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct batadv_orig_node *orig)
{
	struct batadv_priv *bat_priv = orig->bat_priv;

	FUNC5(&orig->mcast_handler_lock);

	FUNC4(bat_priv, orig, BATADV_NO_FLAGS);
	FUNC0(bat_priv, orig, BATADV_NO_FLAGS);
	FUNC1(bat_priv, orig, BATADV_NO_FLAGS);
	FUNC2(bat_priv, orig,
				      BATADV_MCAST_WANT_NO_RTR4);
	FUNC3(bat_priv, orig,
				      BATADV_MCAST_WANT_NO_RTR6);

	FUNC6(&orig->mcast_handler_lock);
}