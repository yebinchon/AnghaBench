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
struct net_device {int /*<<< orphan*/  name; } ;
struct ip_vs_dest_dst {TYPE_1__* dst_cache; } ;
struct ip_vs_dest {int /*<<< orphan*/  dst_lock; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  port; int /*<<< orphan*/  addr; int /*<<< orphan*/  af; int /*<<< orphan*/  dest_dst; } ;
struct TYPE_2__ {struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_vs_dest*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ip_vs_dest_dst* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC8(struct ip_vs_dest *dest, struct net_device *dev)
{
	struct ip_vs_dest_dst *dest_dst;

	FUNC6(&dest->dst_lock);
	dest_dst = FUNC4(dest->dest_dst, 1);
	if (dest_dst && dest_dst->dst_cache->dev == dev) {
		FUNC1(3, "Reset dev:%s dest %s:%u ,dest->refcnt=%d\n",
			      dev->name,
			      FUNC0(dest->af, &dest->addr),
			      FUNC3(dest->port),
			      FUNC5(&dest->refcnt));
		FUNC2(dest);
	}
	FUNC7(&dest->dst_lock);

}