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
struct sit_entry_set {int /*<<< orphan*/  set_list; scalar_t__ entry_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sit_entry_set* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sit_entry_set_slab ; 

__attribute__((used)) static struct sit_entry_set *FUNC2(void)
{
	struct sit_entry_set *ses =
			FUNC1(sit_entry_set_slab, GFP_NOFS);

	ses->entry_cnt = 0;
	FUNC0(&ses->set_list);
	return ses;
}