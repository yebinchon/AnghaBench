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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct batadv_tvlv_tt_change {int dummy; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int /*<<< orphan*/  last_ttvn; int /*<<< orphan*/  tt_buff_lock; int /*<<< orphan*/ * tt_buff; scalar_t__ tt_buff_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*,struct batadv_orig_node*,struct batadv_tvlv_tt_change*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct batadv_orig_node* FUNC2 (struct batadv_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_orig_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_priv*,struct batadv_orig_node*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct batadv_priv *bat_priv,
				  struct batadv_tvlv_tt_change *tt_change,
				  u8 ttvn, u8 *resp_src,
				  u16 num_entries)
{
	struct batadv_orig_node *orig_node;

	orig_node = FUNC2(bat_priv, resp_src);
	if (!orig_node)
		goto out;

	/* Purge the old table first.. */
	FUNC4(bat_priv, orig_node, -1,
				  "Received full table");

	FUNC0(bat_priv, orig_node, tt_change, num_entries,
				  ttvn);

	FUNC6(&orig_node->tt_buff_lock);
	FUNC5(orig_node->tt_buff);
	orig_node->tt_buff_len = 0;
	orig_node->tt_buff = NULL;
	FUNC7(&orig_node->tt_buff_lock);

	FUNC1(&orig_node->last_ttvn, ttvn);

out:
	if (orig_node)
		FUNC3(orig_node);
}