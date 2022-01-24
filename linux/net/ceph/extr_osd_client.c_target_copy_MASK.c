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
struct ceph_osd_request_target {int /*<<< orphan*/  osd; int /*<<< orphan*/  last_force_resend; int /*<<< orphan*/  epoch; int /*<<< orphan*/  paused; int /*<<< orphan*/  flags; int /*<<< orphan*/  sort_bitwise; int /*<<< orphan*/  min_size; int /*<<< orphan*/  size; int /*<<< orphan*/  up; int /*<<< orphan*/  acting; int /*<<< orphan*/  pg_num_mask; int /*<<< orphan*/  pg_num; int /*<<< orphan*/  spgid; int /*<<< orphan*/  pgid; int /*<<< orphan*/  target_oloc; int /*<<< orphan*/  target_oid; int /*<<< orphan*/  base_oloc; int /*<<< orphan*/  base_oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ceph_osd_request_target *dest,
			const struct ceph_osd_request_target *src)
{
	FUNC0(&dest->base_oid, &src->base_oid);
	FUNC1(&dest->base_oloc, &src->base_oloc);
	FUNC0(&dest->target_oid, &src->target_oid);
	FUNC1(&dest->target_oloc, &src->target_oloc);

	dest->pgid = src->pgid; /* struct */
	dest->spgid = src->spgid; /* struct */
	dest->pg_num = src->pg_num;
	dest->pg_num_mask = src->pg_num_mask;
	FUNC2(&dest->acting, &src->acting);
	FUNC2(&dest->up, &src->up);
	dest->size = src->size;
	dest->min_size = src->min_size;
	dest->sort_bitwise = src->sort_bitwise;

	dest->flags = src->flags;
	dest->paused = src->paused;

	dest->epoch = src->epoch;
	dest->last_force_resend = src->last_force_resend;

	dest->osd = src->osd;
}