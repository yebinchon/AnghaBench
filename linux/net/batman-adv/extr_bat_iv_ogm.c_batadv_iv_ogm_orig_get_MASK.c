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
typedef  int /*<<< orphan*/  u8 ;
struct batadv_priv {int /*<<< orphan*/  orig_hash; } ;
struct TYPE_2__ {int /*<<< orphan*/  ogm_cnt_lock; } ;
struct batadv_orig_node {int /*<<< orphan*/  hash_entry; int /*<<< orphan*/  refcount; TYPE_1__ bat_iv; } ;

/* Variables and functions */
 int /*<<< orphan*/  batadv_choose_orig ; 
 int /*<<< orphan*/  batadv_compare_orig ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct batadv_orig_node*,int /*<<< orphan*/ *) ; 
 struct batadv_orig_node* FUNC1 (struct batadv_priv*,int /*<<< orphan*/  const*) ; 
 struct batadv_orig_node* FUNC2 (struct batadv_priv*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_orig_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct batadv_orig_node *
FUNC6(struct batadv_priv *bat_priv, const u8 *addr)
{
	struct batadv_orig_node *orig_node;
	int hash_added;

	orig_node = FUNC1(bat_priv, addr);
	if (orig_node)
		return orig_node;

	orig_node = FUNC2(bat_priv, addr);
	if (!orig_node)
		return NULL;

	FUNC5(&orig_node->bat_iv.ogm_cnt_lock);

	FUNC4(&orig_node->refcount);
	hash_added = FUNC0(bat_priv->orig_hash, batadv_compare_orig,
				     batadv_choose_orig, orig_node,
				     &orig_node->hash_entry);
	if (hash_added != 0)
		goto free_orig_node_hash;

	return orig_node;

free_orig_node_hash:
	/* reference for batadv_hash_add */
	FUNC3(orig_node);
	/* reference from batadv_orig_node_new */
	FUNC3(orig_node);

	return NULL;
}