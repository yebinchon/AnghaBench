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
struct list_head {int dummy; } ;
struct cgrp_cset_link {int /*<<< orphan*/  cset_link; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 struct cgrp_cset_link* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static int FUNC4(int count, struct list_head *tmp_links)
{
	struct cgrp_cset_link *link;
	int i;

	FUNC0(tmp_links);

	for (i = 0; i < count; i++) {
		link = FUNC2(sizeof(*link), GFP_KERNEL);
		if (!link) {
			FUNC1(tmp_links);
			return -ENOMEM;
		}
		FUNC3(&link->cset_link, tmp_links);
	}
	return 0;
}