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
struct TYPE_2__ {int /*<<< orphan*/  curr_gw; } ;
struct batadv_priv {TYPE_1__ gw; } ;
struct batadv_gw_node {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct batadv_gw_node* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct batadv_gw_node *
FUNC4(struct batadv_priv *bat_priv)
{
	struct batadv_gw_node *gw_node;

	FUNC2();
	gw_node = FUNC1(bat_priv->gw.curr_gw);
	if (!gw_node)
		goto out;

	if (!FUNC0(&gw_node->refcount))
		gw_node = NULL;

out:
	FUNC3();
	return gw_node;
}