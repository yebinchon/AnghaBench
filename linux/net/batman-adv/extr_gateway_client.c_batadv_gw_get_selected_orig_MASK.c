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
struct batadv_orig_node {int /*<<< orphan*/  refcount; } ;
struct batadv_gw_node {struct batadv_orig_node* orig_node; } ;

/* Variables and functions */
 struct batadv_gw_node* FUNC0 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_gw_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

struct batadv_orig_node *
FUNC5(struct batadv_priv *bat_priv)
{
	struct batadv_gw_node *gw_node;
	struct batadv_orig_node *orig_node = NULL;

	gw_node = FUNC0(bat_priv);
	if (!gw_node)
		goto out;

	FUNC3();
	orig_node = gw_node->orig_node;
	if (!orig_node)
		goto unlock;

	if (!FUNC2(&orig_node->refcount))
		orig_node = NULL;

unlock:
	FUNC4();
out:
	if (gw_node)
		FUNC1(gw_node);
	return orig_node;
}