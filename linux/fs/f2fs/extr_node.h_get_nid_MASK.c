#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * nid; } ;
struct TYPE_3__ {int /*<<< orphan*/ * i_nid; } ;
struct f2fs_node {TYPE_2__ in; TYPE_1__ i; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 struct f2fs_node* FUNC0 (struct page*) ; 
 int NODE_DIR1_BLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline nid_t FUNC2(struct page *p, int off, bool i)
{
	struct f2fs_node *rn = FUNC0(p);

	if (i)
		return FUNC1(rn->i.i_nid[off - NODE_DIR1_BLOCK]);
	return FUNC1(rn->in.nid[off]);
}