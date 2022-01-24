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
struct ceph_osd_request_target {int dummy; } ;
struct ceph_hobject_id {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ceph_hobject_id*,struct ceph_hobject_id const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_hobject_id*,struct ceph_osd_request_target const*) ; 

__attribute__((used)) static bool FUNC2(const struct ceph_osd_request_target *t,
				const struct ceph_hobject_id *begin,
				const struct ceph_hobject_id *end)
{
	struct ceph_hobject_id hoid;
	int cmp;

	FUNC1(&hoid, t);
	cmp = FUNC0(&hoid, begin);
	return !cmp || (cmp > 0 && FUNC0(&hoid, end) < 0);
}