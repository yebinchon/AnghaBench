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
typedef  int /*<<< orphan*/  u64 ;
struct ceph_pg_pool_info {int dummy; } ;
struct ceph_osdmap {int /*<<< orphan*/  pg_pools; } ;

/* Variables and functions */
 struct ceph_pg_pool_info* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct ceph_pg_pool_info *FUNC1(struct ceph_osdmap *map, u64 id)
{
	return FUNC0(&map->pg_pools, id);
}