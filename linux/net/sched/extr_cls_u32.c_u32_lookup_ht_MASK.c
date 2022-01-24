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
typedef  scalar_t__ u32 ;
struct tc_u_hnode {scalar_t__ handle; int /*<<< orphan*/  next; } ;
struct tc_u_common {int /*<<< orphan*/  hlist; } ;

/* Variables and functions */
 struct tc_u_hnode* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct tc_u_hnode *FUNC1(struct tc_u_common *tp_c, u32 handle)
{
	struct tc_u_hnode *ht;

	for (ht = FUNC0(tp_c->hlist);
	     ht;
	     ht = FUNC0(ht->next))
		if (ht->handle == handle)
			break;

	return ht;
}