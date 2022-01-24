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
struct net_device {TYPE_2__* header_ops; } ;
struct hh_cache {int /*<<< orphan*/  hh_len; } ;
struct neighbour {int /*<<< orphan*/  lock; struct hh_cache hh; TYPE_1__* tbl; struct net_device* dev; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_4__ {int /*<<< orphan*/  (* cache ) (struct neighbour*,struct hh_cache*,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct neighbour*,struct hh_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct neighbour *n)
{
	struct net_device *dev = n->dev;
	__be16 prot = n->tbl->protocol;
	struct hh_cache	*hh = &n->hh;

	FUNC1(&n->lock);

	/* Only one thread can come in here and initialize the
	 * hh_cache entry.
	 */
	if (!hh->hh_len)
		dev->header_ops->cache(n, hh, prot);

	FUNC2(&n->lock);
}