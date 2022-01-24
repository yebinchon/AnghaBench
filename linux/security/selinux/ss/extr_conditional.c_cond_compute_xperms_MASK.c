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
struct extended_perms_decision {int dummy; } ;
struct TYPE_2__ {int specified; } ;
struct avtab_node {TYPE_1__ key; } ;
struct avtab_key {int /*<<< orphan*/  specified; } ;
struct avtab {int dummy; } ;

/* Variables and functions */
 int AVTAB_ENABLED ; 
 struct avtab_node* FUNC0 (struct avtab*,struct avtab_key*) ; 
 struct avtab_node* FUNC1 (struct avtab_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct extended_perms_decision*,struct avtab_node*) ; 

void FUNC3(struct avtab *ctab, struct avtab_key *key,
		struct extended_perms_decision *xpermd)
{
	struct avtab_node *node;

	if (!ctab || !key || !xpermd)
		return;

	for (node = FUNC0(ctab, key); node;
			node = FUNC1(node, key->specified)) {
		if (node->key.specified & AVTAB_ENABLED)
			FUNC2(xpermd, node);
	}
	return;

}