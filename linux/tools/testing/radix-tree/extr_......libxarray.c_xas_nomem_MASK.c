#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xa_state {scalar_t__ xa_node; TYPE_2__* xa_alloc; TYPE_1__* xa; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_5__ {int /*<<< orphan*/  private_list; } ;
struct TYPE_4__ {int xa_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ XAS_RESTART ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int XA_FLAGS_ACCOUNT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  __GFP_ACCOUNT ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  radix_tree_node_cachep ; 
 int /*<<< orphan*/  FUNC4 (struct xa_state*) ; 

bool FUNC5(struct xa_state *xas, gfp_t gfp)
{
	if (xas->xa_node != FUNC0(-ENOMEM)) {
		FUNC4(xas);
		return false;
	}
	if (xas->xa->xa_flags & XA_FLAGS_ACCOUNT)
		gfp |= __GFP_ACCOUNT;
	xas->xa_alloc = FUNC2(radix_tree_node_cachep, gfp);
	if (!xas->xa_alloc)
		return false;
	FUNC1(xas->xa_alloc, !FUNC3(&xas->xa_alloc->private_list));
	xas->xa_node = XAS_RESTART;
	return true;
}