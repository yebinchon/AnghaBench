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
struct TYPE_3__ {scalar_t__ in; } ;
struct xen_9pfs_front_priv {int num_rings; scalar_t__ irq; struct xen_9pfs_front_priv* tag; struct xen_9pfs_front_priv* rings; TYPE_2__* intf; int /*<<< orphan*/  ref; TYPE_1__ data; int /*<<< orphan*/  dev; int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  grant_ref_t ;
struct TYPE_4__ {int /*<<< orphan*/ * ref; } ;

/* Variables and functions */
 scalar_t__ PAGE_SHIFT ; 
 int XEN_9PFS_RING_ORDER ; 
 scalar_t__ XEN_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xen_9pfs_front_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xen_9pfs_lock ; 

__attribute__((used)) static void FUNC8(struct xen_9pfs_front_priv *priv)
{
	int i, j;

	FUNC6(&xen_9pfs_lock);
	FUNC4(&priv->list);
	FUNC7(&xen_9pfs_lock);

	for (i = 0; i < priv->num_rings; i++) {
		if (!priv->rings[i].intf)
			break;
		if (priv->rings[i].irq > 0)
			FUNC5(priv->rings[i].irq, priv->dev);
		if (priv->rings[i].data.in) {
			for (j = 0; j < (1 << XEN_9PFS_RING_ORDER); j++) {
				grant_ref_t ref;

				ref = priv->rings[i].intf->ref[j];
				FUNC2(ref, 0, 0);
			}
			FUNC1((unsigned long)priv->rings[i].data.in,
				   XEN_9PFS_RING_ORDER -
				   (PAGE_SHIFT - XEN_PAGE_SHIFT));
		}
		FUNC2(priv->rings[i].ref, 0, 0);
		FUNC0((unsigned long)priv->rings[i].intf);
	}
	FUNC3(priv->rings);
	FUNC3(priv->tag);
	FUNC3(priv);
}