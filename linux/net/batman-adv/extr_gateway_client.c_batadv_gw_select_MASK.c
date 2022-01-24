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
struct TYPE_2__ {int /*<<< orphan*/  list_lock; int /*<<< orphan*/  curr_gw; } ;
struct batadv_priv {TYPE_1__ gw; } ;
struct batadv_gw_node {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct batadv_gw_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct batadv_gw_node*) ; 
 struct batadv_gw_node* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct batadv_priv *bat_priv,
			     struct batadv_gw_node *new_gw_node)
{
	struct batadv_gw_node *curr_gw_node;

	FUNC4(&bat_priv->gw.list_lock);

	if (new_gw_node)
		FUNC1(&new_gw_node->refcount);

	curr_gw_node = FUNC3(bat_priv->gw.curr_gw, 1);
	FUNC2(bat_priv->gw.curr_gw, new_gw_node);

	if (curr_gw_node)
		FUNC0(curr_gw_node);

	FUNC5(&bat_priv->gw.list_lock);
}