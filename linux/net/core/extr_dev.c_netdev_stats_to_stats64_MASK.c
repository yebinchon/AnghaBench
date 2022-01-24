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
typedef  unsigned long u64 ;
struct rtnl_link_stats64 {int dummy; } ;
struct net_device_stats {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtnl_link_stats64*,struct net_device_stats const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct rtnl_link_stats64 *stats64,
			     const struct net_device_stats *netdev_stats)
{
#if BITS_PER_LONG == 64
	BUILD_BUG_ON(sizeof(*stats64) < sizeof(*netdev_stats));
	memcpy(stats64, netdev_stats, sizeof(*netdev_stats));
	/* zero out counters that only exist in rtnl_link_stats64 */
	memset((char *)stats64 + sizeof(*netdev_stats), 0,
	       sizeof(*stats64) - sizeof(*netdev_stats));
#else
	size_t i, n = sizeof(*netdev_stats) / sizeof(unsigned long);
	const unsigned long *src = (const unsigned long *)netdev_stats;
	u64 *dst = (u64 *)stats64;

	FUNC0(n > sizeof(*stats64) / sizeof(u64));
	for (i = 0; i < n; i++)
		dst[i] = src[i];
	/* zero out counters that only exist in rtnl_link_stats64 */
	FUNC2((char *)stats64 + n * sizeof(u64), 0,
	       sizeof(*stats64) - n * sizeof(u64));
#endif
}