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
struct xfrm_dst {struct dst_entry* child; } ;
struct metadata_dst {int dummy; } ;
struct dst_entry {int flags; TYPE_1__* ops; int /*<<< orphan*/  lwtstate; scalar_t__ dev; scalar_t__ xfrm; } ;
struct TYPE_2__ {int /*<<< orphan*/  kmem_cachep; int /*<<< orphan*/  (* destroy ) (struct dst_entry*) ;} ;

/* Variables and functions */
 int DST_METADATA ; 
 int DST_NOCOUNT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct metadata_dst*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct dst_entry*) ; 

struct dst_entry *FUNC8(struct dst_entry * dst)
{
	struct dst_entry *child = NULL;

	FUNC6();

#ifdef CONFIG_XFRM
	if (dst->xfrm) {
		struct xfrm_dst *xdst = (struct xfrm_dst *) dst;

		child = xdst->child;
	}
#endif
	if (!(dst->flags & DST_NOCOUNT))
		FUNC1(dst->ops, -1);

	if (dst->ops->destroy)
		dst->ops->destroy(dst);
	if (dst->dev)
		FUNC0(dst->dev);

	FUNC4(dst->lwtstate);

	if (dst->flags & DST_METADATA)
		FUNC5((struct metadata_dst *)dst);
	else
		FUNC3(dst->ops->kmem_cachep, dst);

	dst = child;
	if (dst)
		FUNC2(dst);
	return NULL;
}