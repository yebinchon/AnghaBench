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
struct ceph_spg {scalar_t__ shard; int /*<<< orphan*/  pgid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC1(const struct ceph_spg *lhs, const struct ceph_spg *rhs)
{
	int ret;

	ret = FUNC0(&lhs->pgid, &rhs->pgid);
	if (ret)
		return ret;

	if (lhs->shard < rhs->shard)
		return -1;
	if (lhs->shard > rhs->shard)
		return 1;

	return 0;
}