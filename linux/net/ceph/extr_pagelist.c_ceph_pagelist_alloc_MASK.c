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
struct ceph_pagelist {int /*<<< orphan*/  refcnt; scalar_t__ num_pages_free; int /*<<< orphan*/  free_list; scalar_t__ room; scalar_t__ length; int /*<<< orphan*/ * mapped_tail; int /*<<< orphan*/  head; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ceph_pagelist* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

struct ceph_pagelist *FUNC3(gfp_t gfp_flags)
{
	struct ceph_pagelist *pl;

	pl = FUNC1(sizeof(*pl), gfp_flags);
	if (!pl)
		return NULL;

	FUNC0(&pl->head);
	pl->mapped_tail = NULL;
	pl->length = 0;
	pl->room = 0;
	FUNC0(&pl->free_list);
	pl->num_pages_free = 0;
	FUNC2(&pl->refcnt, 1);

	return pl;
}